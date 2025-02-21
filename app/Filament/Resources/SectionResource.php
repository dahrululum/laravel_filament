<?php

namespace App\Filament\Resources;

use Filament\Forms;
use Filament\Tables;
use App\Models\Section;
use Filament\Resources\Form;
use Filament\Resources\Table;
use Tables\Columns\ImageColumn;
use Filament\Resources\Resource;
use Filament\Forms\Components\Card;
use Filament\Forms\Components\Select;
use Illuminate\Support\Facades\Storage;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\Collection;
use App\Filament\Resources\SectionResource\Pages;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use App\Filament\Resources\SectionResource\RelationManagers;

class SectionResource extends Resource
{
    protected static ?string $model = Section::class;

    protected static ?string $navigationIcon = 'heroicon-o-external-link';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Card::make()
                    ->schema([
                        Forms\Components\TextInput::make('title')
                        ->required()
                        ->maxLength(255),
                        Forms\Components\FileUpload::make('thumbnail')->required()->image()->disk('public'), 
                        Forms\Components\RichEditor::make('content'), 
                        
                        Forms\Components\Select::make('post_as')
                                ->options(['JUMBOTRON'=> 'JUMBOTRON',
                                            'ABOUT'=> 'ABOUT',]),
                    ])
                    ->columns(1),
                
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\TextColumn::make('title')->sortable()->searchable(),
                Tables\Columns\ImageColumn::make('thumbnail'),
                Tables\Columns\TextColumn::make('post_as')->sortable()->searchable(),
                Tables\Columns\TextColumn::make('created_at')
                    ->dateTime(),
                
            ])
            ->filters([
                //
            ])
            ->actions([
                Tables\Actions\EditAction::make(),
            ])
            ->bulkActions([
                Tables\Actions\DeleteBulkAction::make()->after(
                    function (Collection $record){
                        foreach($record as $section){
                            if($section->thumbnail){
                                Storage::disk('public')->delete($section->thumbnail);
                            }
                        }
                    }
                ),
            ]);
    }
    
    public static function getRelations(): array
    {
        return [
            //
        ];
    }
    
    public static function getPages(): array
    {
        return [
            'index' => Pages\ListSections::route('/'),
            'create' => Pages\CreateSection::route('/create'),
            'edit' => Pages\EditSection::route('/{record}/edit'),
        ];
    }    
}
