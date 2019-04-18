##
## Auto Generated makefile by CodeLite IDE
## any manual changes will be erased      
##
## Debug
ProjectName            :=Main
ConfigurationName      :=Debug
WorkspacePath          :=C:/Users/tmoraes/Documents/GameProjects
ProjectPath            :=C:/Users/tmoraes/Documents/GameProjects/Main
IntermediateDirectory  :=./Debug
OutDir                 := $(IntermediateDirectory)
CurrentFileName        :=
CurrentFilePath        :=
CurrentFileFullPath    :=
User                   :=tmoraes
Date                   :=18/04/2019
CodeLitePath           :="C:/Program Files/CodeLite"
LinkerName             :=C:/MinGW/bin/g++.exe
SharedObjectLinkerName :=C:/MinGW/bin/g++.exe -shared -fPIC
ObjectSuffix           :=.o
DependSuffix           :=.o.d
PreprocessSuffix       :=.i
DebugSwitch            :=-g 
IncludeSwitch          :=-I
LibrarySwitch          :=-l
OutputSwitch           :=-o 
LibraryPathSwitch      :=-L
PreprocessorSwitch     :=-D
SourceSwitch           :=-c 
OutputFile             :=$(IntermediateDirectory)/$(ProjectName)
Preprocessors          :=
ObjectSwitch           :=-o 
ArchiveOutputSwitch    := 
PreprocessOnlySwitch   :=-E
ObjectsFileList        :="Main.txt"
PCHCompileFlags        :=
MakeDirCommand         :=makedir
RcCmpOptions           := 
RcCompilerName         :=C:/MinGW/bin/windres.exe
LinkOptions            :=  -lmingw32  -lSDL2main -lSDL2 -lSDL2_image -lzlib1 -mwindows
IncludePath            :=  $(IncludeSwitch). $(IncludeSwitch)C:/Users/tmoraes/Documents/tai/Cpp_game_devs_SDL_lib/SDL2-2.0.9/i686-w64-mingw32/include/SDL2 
IncludePCH             := 
RcIncludePath          := 
Libs                   := 
ArLibs                 :=  
LibPath                := $(LibraryPathSwitch). $(LibraryPathSwitch)C:/Users/tmoraes/Documents/tai/Cpp_game_devs_SDL_lib/SDL2-2.0.9/i686-w64-mingw32/bin $(LibraryPathSwitch)C:/Users/tmoraes/Documents/tai/Cpp_game_devs_SDL_lib/SDL2-2.0.9/i686-w64-mingw32/lib 

##
## Common variables
## AR, CXX, CC, AS, CXXFLAGS and CFLAGS can be overriden using an environment variables
##
AR       := C:/MinGW/bin/ar.exe rcu
CXX      := C:/MinGW/bin/g++.exe
CC       := C:/MinGW/bin/gcc.exe
CXXFLAGS :=  -g -O0 -Wall $(Preprocessors)
CFLAGS   :=  -g -O0 -Wall $(Preprocessors)
ASFLAGS  := 
AS       := C:/MinGW/bin/as.exe


##
## User defined environment variables
##
CodeLiteDir:=C:\Program Files\CodeLite
Objects0=$(IntermediateDirectory)/src_Game.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_GameObject.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_InputHandler.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_LoaderParams.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_TextureManager.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_GameOverState.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_GameState.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_MainMenuState.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_Enemy.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_BaseCreator.cpp$(ObjectSuffix) \
	$(IntermediateDirectory)/src_GameObjectFactory.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_Vector2D.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_tinystr.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_tinyxml.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_tinyxmlparser.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_PlayState.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_Level.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_Layer.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_AnimatedGraphic.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_LevelParser.cpp$(ObjectSuffix) \
	$(IntermediateDirectory)/src_Player.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_Setup.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_Main.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_ponto.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_MenuButton.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_base64.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_StateParser.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_start.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_TileLayer.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_GameStateMachine.cpp$(ObjectSuffix) \
	$(IntermediateDirectory)/src_SDLGameObject.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_tinyxmlerror.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_PauseState.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_MenuState.cpp$(ObjectSuffix) 



Objects=$(Objects0) 

##
## Main Build Targets 
##
.PHONY: all clean PreBuild PrePreBuild PostBuild MakeIntermediateDirs
all: $(OutputFile)

$(OutputFile): $(IntermediateDirectory)/.d $(Objects) 
	@$(MakeDirCommand) $(@D)
	@echo "" > $(IntermediateDirectory)/.d
	@echo $(Objects0)  > $(ObjectsFileList)
	$(LinkerName) $(OutputSwitch)$(OutputFile) @$(ObjectsFileList) $(LibPath) $(Libs) $(LinkOptions)

MakeIntermediateDirs:
	@$(MakeDirCommand) "./Debug"


$(IntermediateDirectory)/.d:
	@$(MakeDirCommand) "./Debug"

PreBuild:


##
## Objects
##
$(IntermediateDirectory)/src_Game.cpp$(ObjectSuffix): src/Game.cpp $(IntermediateDirectory)/src_Game.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/tmoraes/Documents/GameProjects/Main/src/Game.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_Game.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_Game.cpp$(DependSuffix): src/Game.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_Game.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_Game.cpp$(DependSuffix) -MM src/Game.cpp

$(IntermediateDirectory)/src_Game.cpp$(PreprocessSuffix): src/Game.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_Game.cpp$(PreprocessSuffix) src/Game.cpp

$(IntermediateDirectory)/src_GameObject.cpp$(ObjectSuffix): src/GameObject.cpp $(IntermediateDirectory)/src_GameObject.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/tmoraes/Documents/GameProjects/Main/src/GameObject.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_GameObject.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_GameObject.cpp$(DependSuffix): src/GameObject.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_GameObject.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_GameObject.cpp$(DependSuffix) -MM src/GameObject.cpp

$(IntermediateDirectory)/src_GameObject.cpp$(PreprocessSuffix): src/GameObject.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_GameObject.cpp$(PreprocessSuffix) src/GameObject.cpp

$(IntermediateDirectory)/src_InputHandler.cpp$(ObjectSuffix): src/InputHandler.cpp $(IntermediateDirectory)/src_InputHandler.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/tmoraes/Documents/GameProjects/Main/src/InputHandler.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_InputHandler.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_InputHandler.cpp$(DependSuffix): src/InputHandler.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_InputHandler.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_InputHandler.cpp$(DependSuffix) -MM src/InputHandler.cpp

$(IntermediateDirectory)/src_InputHandler.cpp$(PreprocessSuffix): src/InputHandler.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_InputHandler.cpp$(PreprocessSuffix) src/InputHandler.cpp

$(IntermediateDirectory)/src_LoaderParams.cpp$(ObjectSuffix): src/LoaderParams.cpp $(IntermediateDirectory)/src_LoaderParams.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/tmoraes/Documents/GameProjects/Main/src/LoaderParams.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_LoaderParams.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_LoaderParams.cpp$(DependSuffix): src/LoaderParams.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_LoaderParams.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_LoaderParams.cpp$(DependSuffix) -MM src/LoaderParams.cpp

$(IntermediateDirectory)/src_LoaderParams.cpp$(PreprocessSuffix): src/LoaderParams.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_LoaderParams.cpp$(PreprocessSuffix) src/LoaderParams.cpp

$(IntermediateDirectory)/src_TextureManager.cpp$(ObjectSuffix): src/TextureManager.cpp $(IntermediateDirectory)/src_TextureManager.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/tmoraes/Documents/GameProjects/Main/src/TextureManager.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_TextureManager.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_TextureManager.cpp$(DependSuffix): src/TextureManager.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_TextureManager.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_TextureManager.cpp$(DependSuffix) -MM src/TextureManager.cpp

$(IntermediateDirectory)/src_TextureManager.cpp$(PreprocessSuffix): src/TextureManager.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_TextureManager.cpp$(PreprocessSuffix) src/TextureManager.cpp

$(IntermediateDirectory)/src_GameOverState.cpp$(ObjectSuffix): src/GameOverState.cpp $(IntermediateDirectory)/src_GameOverState.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/tmoraes/Documents/GameProjects/Main/src/GameOverState.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_GameOverState.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_GameOverState.cpp$(DependSuffix): src/GameOverState.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_GameOverState.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_GameOverState.cpp$(DependSuffix) -MM src/GameOverState.cpp

$(IntermediateDirectory)/src_GameOverState.cpp$(PreprocessSuffix): src/GameOverState.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_GameOverState.cpp$(PreprocessSuffix) src/GameOverState.cpp

$(IntermediateDirectory)/src_GameState.cpp$(ObjectSuffix): src/GameState.cpp $(IntermediateDirectory)/src_GameState.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/tmoraes/Documents/GameProjects/Main/src/GameState.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_GameState.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_GameState.cpp$(DependSuffix): src/GameState.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_GameState.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_GameState.cpp$(DependSuffix) -MM src/GameState.cpp

$(IntermediateDirectory)/src_GameState.cpp$(PreprocessSuffix): src/GameState.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_GameState.cpp$(PreprocessSuffix) src/GameState.cpp

$(IntermediateDirectory)/src_MainMenuState.cpp$(ObjectSuffix): src/MainMenuState.cpp $(IntermediateDirectory)/src_MainMenuState.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/tmoraes/Documents/GameProjects/Main/src/MainMenuState.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_MainMenuState.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_MainMenuState.cpp$(DependSuffix): src/MainMenuState.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_MainMenuState.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_MainMenuState.cpp$(DependSuffix) -MM src/MainMenuState.cpp

$(IntermediateDirectory)/src_MainMenuState.cpp$(PreprocessSuffix): src/MainMenuState.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_MainMenuState.cpp$(PreprocessSuffix) src/MainMenuState.cpp

$(IntermediateDirectory)/src_Enemy.cpp$(ObjectSuffix): src/Enemy.cpp $(IntermediateDirectory)/src_Enemy.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/tmoraes/Documents/GameProjects/Main/src/Enemy.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_Enemy.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_Enemy.cpp$(DependSuffix): src/Enemy.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_Enemy.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_Enemy.cpp$(DependSuffix) -MM src/Enemy.cpp

$(IntermediateDirectory)/src_Enemy.cpp$(PreprocessSuffix): src/Enemy.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_Enemy.cpp$(PreprocessSuffix) src/Enemy.cpp

$(IntermediateDirectory)/src_BaseCreator.cpp$(ObjectSuffix): src/BaseCreator.cpp $(IntermediateDirectory)/src_BaseCreator.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/tmoraes/Documents/GameProjects/Main/src/BaseCreator.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_BaseCreator.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_BaseCreator.cpp$(DependSuffix): src/BaseCreator.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_BaseCreator.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_BaseCreator.cpp$(DependSuffix) -MM src/BaseCreator.cpp

$(IntermediateDirectory)/src_BaseCreator.cpp$(PreprocessSuffix): src/BaseCreator.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_BaseCreator.cpp$(PreprocessSuffix) src/BaseCreator.cpp

$(IntermediateDirectory)/src_GameObjectFactory.cpp$(ObjectSuffix): src/GameObjectFactory.cpp $(IntermediateDirectory)/src_GameObjectFactory.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/tmoraes/Documents/GameProjects/Main/src/GameObjectFactory.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_GameObjectFactory.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_GameObjectFactory.cpp$(DependSuffix): src/GameObjectFactory.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_GameObjectFactory.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_GameObjectFactory.cpp$(DependSuffix) -MM src/GameObjectFactory.cpp

$(IntermediateDirectory)/src_GameObjectFactory.cpp$(PreprocessSuffix): src/GameObjectFactory.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_GameObjectFactory.cpp$(PreprocessSuffix) src/GameObjectFactory.cpp

$(IntermediateDirectory)/src_Vector2D.cpp$(ObjectSuffix): src/Vector2D.cpp $(IntermediateDirectory)/src_Vector2D.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/tmoraes/Documents/GameProjects/Main/src/Vector2D.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_Vector2D.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_Vector2D.cpp$(DependSuffix): src/Vector2D.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_Vector2D.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_Vector2D.cpp$(DependSuffix) -MM src/Vector2D.cpp

$(IntermediateDirectory)/src_Vector2D.cpp$(PreprocessSuffix): src/Vector2D.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_Vector2D.cpp$(PreprocessSuffix) src/Vector2D.cpp

$(IntermediateDirectory)/src_tinystr.cpp$(ObjectSuffix): src/tinystr.cpp $(IntermediateDirectory)/src_tinystr.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/tmoraes/Documents/GameProjects/Main/src/tinystr.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_tinystr.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_tinystr.cpp$(DependSuffix): src/tinystr.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_tinystr.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_tinystr.cpp$(DependSuffix) -MM src/tinystr.cpp

$(IntermediateDirectory)/src_tinystr.cpp$(PreprocessSuffix): src/tinystr.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_tinystr.cpp$(PreprocessSuffix) src/tinystr.cpp

$(IntermediateDirectory)/src_tinyxml.cpp$(ObjectSuffix): src/tinyxml.cpp $(IntermediateDirectory)/src_tinyxml.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/tmoraes/Documents/GameProjects/Main/src/tinyxml.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_tinyxml.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_tinyxml.cpp$(DependSuffix): src/tinyxml.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_tinyxml.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_tinyxml.cpp$(DependSuffix) -MM src/tinyxml.cpp

$(IntermediateDirectory)/src_tinyxml.cpp$(PreprocessSuffix): src/tinyxml.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_tinyxml.cpp$(PreprocessSuffix) src/tinyxml.cpp

$(IntermediateDirectory)/src_tinyxmlparser.cpp$(ObjectSuffix): src/tinyxmlparser.cpp $(IntermediateDirectory)/src_tinyxmlparser.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/tmoraes/Documents/GameProjects/Main/src/tinyxmlparser.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_tinyxmlparser.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_tinyxmlparser.cpp$(DependSuffix): src/tinyxmlparser.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_tinyxmlparser.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_tinyxmlparser.cpp$(DependSuffix) -MM src/tinyxmlparser.cpp

$(IntermediateDirectory)/src_tinyxmlparser.cpp$(PreprocessSuffix): src/tinyxmlparser.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_tinyxmlparser.cpp$(PreprocessSuffix) src/tinyxmlparser.cpp

$(IntermediateDirectory)/src_PlayState.cpp$(ObjectSuffix): src/PlayState.cpp $(IntermediateDirectory)/src_PlayState.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/tmoraes/Documents/GameProjects/Main/src/PlayState.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_PlayState.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_PlayState.cpp$(DependSuffix): src/PlayState.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_PlayState.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_PlayState.cpp$(DependSuffix) -MM src/PlayState.cpp

$(IntermediateDirectory)/src_PlayState.cpp$(PreprocessSuffix): src/PlayState.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_PlayState.cpp$(PreprocessSuffix) src/PlayState.cpp

$(IntermediateDirectory)/src_Level.cpp$(ObjectSuffix): src/Level.cpp $(IntermediateDirectory)/src_Level.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/tmoraes/Documents/GameProjects/Main/src/Level.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_Level.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_Level.cpp$(DependSuffix): src/Level.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_Level.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_Level.cpp$(DependSuffix) -MM src/Level.cpp

$(IntermediateDirectory)/src_Level.cpp$(PreprocessSuffix): src/Level.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_Level.cpp$(PreprocessSuffix) src/Level.cpp

$(IntermediateDirectory)/src_Layer.cpp$(ObjectSuffix): src/Layer.cpp $(IntermediateDirectory)/src_Layer.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/tmoraes/Documents/GameProjects/Main/src/Layer.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_Layer.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_Layer.cpp$(DependSuffix): src/Layer.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_Layer.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_Layer.cpp$(DependSuffix) -MM src/Layer.cpp

$(IntermediateDirectory)/src_Layer.cpp$(PreprocessSuffix): src/Layer.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_Layer.cpp$(PreprocessSuffix) src/Layer.cpp

$(IntermediateDirectory)/src_AnimatedGraphic.cpp$(ObjectSuffix): src/AnimatedGraphic.cpp $(IntermediateDirectory)/src_AnimatedGraphic.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/tmoraes/Documents/GameProjects/Main/src/AnimatedGraphic.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_AnimatedGraphic.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_AnimatedGraphic.cpp$(DependSuffix): src/AnimatedGraphic.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_AnimatedGraphic.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_AnimatedGraphic.cpp$(DependSuffix) -MM src/AnimatedGraphic.cpp

$(IntermediateDirectory)/src_AnimatedGraphic.cpp$(PreprocessSuffix): src/AnimatedGraphic.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_AnimatedGraphic.cpp$(PreprocessSuffix) src/AnimatedGraphic.cpp

$(IntermediateDirectory)/src_LevelParser.cpp$(ObjectSuffix): src/LevelParser.cpp $(IntermediateDirectory)/src_LevelParser.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/tmoraes/Documents/GameProjects/Main/src/LevelParser.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_LevelParser.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_LevelParser.cpp$(DependSuffix): src/LevelParser.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_LevelParser.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_LevelParser.cpp$(DependSuffix) -MM src/LevelParser.cpp

$(IntermediateDirectory)/src_LevelParser.cpp$(PreprocessSuffix): src/LevelParser.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_LevelParser.cpp$(PreprocessSuffix) src/LevelParser.cpp

$(IntermediateDirectory)/src_Player.cpp$(ObjectSuffix): src/Player.cpp $(IntermediateDirectory)/src_Player.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/tmoraes/Documents/GameProjects/Main/src/Player.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_Player.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_Player.cpp$(DependSuffix): src/Player.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_Player.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_Player.cpp$(DependSuffix) -MM src/Player.cpp

$(IntermediateDirectory)/src_Player.cpp$(PreprocessSuffix): src/Player.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_Player.cpp$(PreprocessSuffix) src/Player.cpp

$(IntermediateDirectory)/src_Setup.cpp$(ObjectSuffix): src/Setup.cpp $(IntermediateDirectory)/src_Setup.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/tmoraes/Documents/GameProjects/Main/src/Setup.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_Setup.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_Setup.cpp$(DependSuffix): src/Setup.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_Setup.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_Setup.cpp$(DependSuffix) -MM src/Setup.cpp

$(IntermediateDirectory)/src_Setup.cpp$(PreprocessSuffix): src/Setup.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_Setup.cpp$(PreprocessSuffix) src/Setup.cpp

$(IntermediateDirectory)/src_Main.cpp$(ObjectSuffix): src/Main.cpp $(IntermediateDirectory)/src_Main.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/tmoraes/Documents/GameProjects/Main/src/Main.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_Main.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_Main.cpp$(DependSuffix): src/Main.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_Main.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_Main.cpp$(DependSuffix) -MM src/Main.cpp

$(IntermediateDirectory)/src_Main.cpp$(PreprocessSuffix): src/Main.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_Main.cpp$(PreprocessSuffix) src/Main.cpp

$(IntermediateDirectory)/src_ponto.cpp$(ObjectSuffix): src/ponto.cpp $(IntermediateDirectory)/src_ponto.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/tmoraes/Documents/GameProjects/Main/src/ponto.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_ponto.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_ponto.cpp$(DependSuffix): src/ponto.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_ponto.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_ponto.cpp$(DependSuffix) -MM src/ponto.cpp

$(IntermediateDirectory)/src_ponto.cpp$(PreprocessSuffix): src/ponto.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_ponto.cpp$(PreprocessSuffix) src/ponto.cpp

$(IntermediateDirectory)/src_MenuButton.cpp$(ObjectSuffix): src/MenuButton.cpp $(IntermediateDirectory)/src_MenuButton.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/tmoraes/Documents/GameProjects/Main/src/MenuButton.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_MenuButton.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_MenuButton.cpp$(DependSuffix): src/MenuButton.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_MenuButton.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_MenuButton.cpp$(DependSuffix) -MM src/MenuButton.cpp

$(IntermediateDirectory)/src_MenuButton.cpp$(PreprocessSuffix): src/MenuButton.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_MenuButton.cpp$(PreprocessSuffix) src/MenuButton.cpp

$(IntermediateDirectory)/src_base64.cpp$(ObjectSuffix): src/base64.cpp $(IntermediateDirectory)/src_base64.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/tmoraes/Documents/GameProjects/Main/src/base64.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_base64.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_base64.cpp$(DependSuffix): src/base64.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_base64.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_base64.cpp$(DependSuffix) -MM src/base64.cpp

$(IntermediateDirectory)/src_base64.cpp$(PreprocessSuffix): src/base64.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_base64.cpp$(PreprocessSuffix) src/base64.cpp

$(IntermediateDirectory)/src_StateParser.cpp$(ObjectSuffix): src/StateParser.cpp $(IntermediateDirectory)/src_StateParser.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/tmoraes/Documents/GameProjects/Main/src/StateParser.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_StateParser.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_StateParser.cpp$(DependSuffix): src/StateParser.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_StateParser.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_StateParser.cpp$(DependSuffix) -MM src/StateParser.cpp

$(IntermediateDirectory)/src_StateParser.cpp$(PreprocessSuffix): src/StateParser.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_StateParser.cpp$(PreprocessSuffix) src/StateParser.cpp

$(IntermediateDirectory)/src_start.cpp$(ObjectSuffix): src/start.cpp $(IntermediateDirectory)/src_start.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/tmoraes/Documents/GameProjects/Main/src/start.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_start.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_start.cpp$(DependSuffix): src/start.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_start.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_start.cpp$(DependSuffix) -MM src/start.cpp

$(IntermediateDirectory)/src_start.cpp$(PreprocessSuffix): src/start.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_start.cpp$(PreprocessSuffix) src/start.cpp

$(IntermediateDirectory)/src_TileLayer.cpp$(ObjectSuffix): src/TileLayer.cpp $(IntermediateDirectory)/src_TileLayer.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/tmoraes/Documents/GameProjects/Main/src/TileLayer.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_TileLayer.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_TileLayer.cpp$(DependSuffix): src/TileLayer.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_TileLayer.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_TileLayer.cpp$(DependSuffix) -MM src/TileLayer.cpp

$(IntermediateDirectory)/src_TileLayer.cpp$(PreprocessSuffix): src/TileLayer.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_TileLayer.cpp$(PreprocessSuffix) src/TileLayer.cpp

$(IntermediateDirectory)/src_GameStateMachine.cpp$(ObjectSuffix): src/GameStateMachine.cpp $(IntermediateDirectory)/src_GameStateMachine.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/tmoraes/Documents/GameProjects/Main/src/GameStateMachine.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_GameStateMachine.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_GameStateMachine.cpp$(DependSuffix): src/GameStateMachine.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_GameStateMachine.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_GameStateMachine.cpp$(DependSuffix) -MM src/GameStateMachine.cpp

$(IntermediateDirectory)/src_GameStateMachine.cpp$(PreprocessSuffix): src/GameStateMachine.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_GameStateMachine.cpp$(PreprocessSuffix) src/GameStateMachine.cpp

$(IntermediateDirectory)/src_SDLGameObject.cpp$(ObjectSuffix): src/SDLGameObject.cpp $(IntermediateDirectory)/src_SDLGameObject.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/tmoraes/Documents/GameProjects/Main/src/SDLGameObject.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_SDLGameObject.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_SDLGameObject.cpp$(DependSuffix): src/SDLGameObject.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_SDLGameObject.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_SDLGameObject.cpp$(DependSuffix) -MM src/SDLGameObject.cpp

$(IntermediateDirectory)/src_SDLGameObject.cpp$(PreprocessSuffix): src/SDLGameObject.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_SDLGameObject.cpp$(PreprocessSuffix) src/SDLGameObject.cpp

$(IntermediateDirectory)/src_tinyxmlerror.cpp$(ObjectSuffix): src/tinyxmlerror.cpp $(IntermediateDirectory)/src_tinyxmlerror.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/tmoraes/Documents/GameProjects/Main/src/tinyxmlerror.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_tinyxmlerror.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_tinyxmlerror.cpp$(DependSuffix): src/tinyxmlerror.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_tinyxmlerror.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_tinyxmlerror.cpp$(DependSuffix) -MM src/tinyxmlerror.cpp

$(IntermediateDirectory)/src_tinyxmlerror.cpp$(PreprocessSuffix): src/tinyxmlerror.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_tinyxmlerror.cpp$(PreprocessSuffix) src/tinyxmlerror.cpp

$(IntermediateDirectory)/src_PauseState.cpp$(ObjectSuffix): src/PauseState.cpp $(IntermediateDirectory)/src_PauseState.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/tmoraes/Documents/GameProjects/Main/src/PauseState.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_PauseState.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_PauseState.cpp$(DependSuffix): src/PauseState.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_PauseState.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_PauseState.cpp$(DependSuffix) -MM src/PauseState.cpp

$(IntermediateDirectory)/src_PauseState.cpp$(PreprocessSuffix): src/PauseState.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_PauseState.cpp$(PreprocessSuffix) src/PauseState.cpp

$(IntermediateDirectory)/src_MenuState.cpp$(ObjectSuffix): src/MenuState.cpp $(IntermediateDirectory)/src_MenuState.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/tmoraes/Documents/GameProjects/Main/src/MenuState.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_MenuState.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_MenuState.cpp$(DependSuffix): src/MenuState.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_MenuState.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_MenuState.cpp$(DependSuffix) -MM src/MenuState.cpp

$(IntermediateDirectory)/src_MenuState.cpp$(PreprocessSuffix): src/MenuState.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_MenuState.cpp$(PreprocessSuffix) src/MenuState.cpp


-include $(IntermediateDirectory)/*$(DependSuffix)
##
## Clean
##
clean:
	$(RM) -r ./Debug/


