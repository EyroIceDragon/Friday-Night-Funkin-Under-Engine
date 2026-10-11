# Friday Night Funkin' - Under Engine

## English

An experimental Friday Night Funkin' engine project built with **GameMaker Studio 2 / GameMaker** and **GML**. This repository includes the GameMaker project, GML scripts, character and stage data, charts, audio, and image assets for continued engine development and testing.

> This project is still in development. On startup, it enters a test gameplay room and loads chart and stage data selected in code. It is not a complete FNF game or release.

### Current Features

- A native GameMaker project with a `.yyp` entry point. The project records IDE version `2026.0.0.16`.
- Creates notes from chart data and updates notes and character animations in sync with song time.
- Loads chart, character animation, and stage configuration from JSON, along with related image atlas data.
- Includes song audio, character, stage, UI, and note assets.
- Includes gameplay systems for note judgments, combos, score, the health bar, and the camera.

**BotPlay** is enabled in the current game initialization code, so player notes are judged automatically. Arrow-key input is connected to the judgment logic, but is not used for manual play by default.

### Requirements

- A GameMaker IDE capable of opening this project. The project records IDE version `2026.0.0.16`; using the same or a newer version is recommended.
- Windows is the platform for which extension DLLs are included in the repository. Support on other platforms depends on extension compatibility and has not been confirmed for this project.

### Opening and Running

1. Clone or download this repository, keeping the project directory structure intact.
2. Open `Friday Night Funkin-Uunder Engine.yyp` in the repository root with GameMaker.
3. Let the IDE import and validate the resources. If prompted about extensions or runtime targets, configure them according to the GameMaker components installed on your machine.
4. Select an available runtime target in the IDE and run the project.

The project uses external asset files and extensions. Do not copy only the `.yyp` file when running it; keep the repository's `datafiles`, `extensions`, and other resource directories alongside it.

### Directory Structure

| Path | Contents |
| --- | --- |
| `Friday Night Funkin-Uunder Engine.yyp` | GameMaker project entry point |
| `objects/` | Game objects and event logic, including initialization, gameplay, characters, notes, and camera |
| `scripts/` | GML scripts for chart/JSON loading, note creation, judgments, and character animation |
| `rooms/` | Initialization and main gameplay rooms |
| `datafiles/assets/data/songs/` | Song charts, event data, and music files |
| `datafiles/assets/data/characters/` | Character animation and appearance configuration |
| `datafiles/assets/data/stages/` | Stage configuration |
| `datafiles/assets/images/` | Game images and some atlas XML files |
| `fonts/`, `shaders/` | Fonts and shaders |
| `extensions/` | GameMaker extensions and platform binaries |

### Content Configuration

Editable content configuration is primarily under `datafiles/assets/data/`:

- Song charts are stored in `songs/<song-directory>/`. Chart JSON files contain data such as BPM, characters, and section notes. Some song directories also contain `events.json`.
- Character configuration is stored in `characters/` and describes image assets, animation names, offsets, and icons.
- Stage configuration is stored in `stages/` and describes stage props, camera zoom, and character positions.

When adding or editing content, follow the existing JSON structures and ensure filenames and image/atlas XML paths match the paths used by the GML code. The chart, stage, and external script used at startup are selected in object initialization code; adding content does not automatically make it appear in a game menu.

### License

The project is licensed under the [MIT License](LICENSE) in the repository root. Some dependencies or assets have their own license files, such as the Scribble and Snap licenses under `datafiles/`. Review the relevant licenses when using or redistributing those materials.

### Disclaimer

Friday Night Funkin' and related original content belong to their respective rights holders. This repository is an independent engine development project; rights and licensing for included assets and dependencies remain subject to their respective sources and licenses.

---

## 中文

一个使用 **GameMaker Studio 2 / GameMaker** 与 **GML** 开发的 Friday Night Funkin' 引擎实验项目。仓库包含游戏工程、GML 脚本、角色与舞台数据、谱面、音频和图像资源，适合继续进行引擎功能开发与测试。

> 项目仍在开发中。目前工程启动后会进入测试用的游戏场景，并从代码中指定的谱面和舞台读取内容；它不是已经完成的 FNF 完整游戏或发行版本。

## 当前内容

- 以 `.yyp` 为入口的 GameMaker 工程；工程记录的 IDE 版本为 `2026.0.0.16`。
- 基于谱面数据生成音符，并按歌曲时间更新音符与角色动画。
- 通过 JSON 配置歌曲谱面、角色动画和舞台参数，并读取相关图像图集数据。
- 包含歌曲音频、角色、舞台、UI 和音符等资源。
- 包含判定、连击、分数、生命条及摄像机等游戏逻辑模块。

当前游戏初始化代码启用了 **BotPlay**，因此玩家音符会自动判定；方向键输入虽已接入判定逻辑，但默认启动状态下不会用于手动击打。

## 环境要求

- 能打开此工程的 GameMaker IDE。仓库中的工程版本信息为 `2026.0.0.16`；建议使用相同或更新版本。
- Windows 是仓库中已包含扩展 DLL 的平台。其他平台是否可用取决于扩展支持情况，尚未在本项目中确认。

## 打开与运行

1. 克隆或下载本仓库，并保留工程目录结构。
2. 使用 GameMaker 打开根目录中的 `Friday Night Funkin-Uunder Engine.yyp`。
3. 等待 IDE 导入和检查资源；如出现扩展或运行目标提示，按本机安装的 GameMaker 组件进行配置。
4. 在 IDE 中选择可用运行目标并运行工程。

工程使用外部资源文件和扩展，运行时请不要只复制 `.yyp` 文件；应保留仓库内的 `datafiles`、`extensions` 及其他资源目录。

## 目录结构

| 路径 | 内容 |
| --- | --- |
| `Friday Night Funkin-Uunder Engine.yyp` | GameMaker 工程入口 |
| `objects/` | 游戏对象及其事件逻辑，例如初始化、对战、角色、音符和摄像机 |
| `scripts/` | GML 脚本，包括谱面/JSON 读取、音符创建、判定和角色动画处理 |
| `rooms/` | 初始化房间与主要游戏房间 |
| `datafiles/assets/data/songs/` | 歌曲谱面、事件数据和音乐文件 |
| `datafiles/assets/data/characters/` | 角色动画和外观配置 |
| `datafiles/assets/data/stages/` | 舞台配置 |
| `datafiles/assets/images/` | 游戏图像资源及部分图集 XML |
| `fonts/`、`shaders/` | 字体与着色器资源 |
| `extensions/` | GameMaker 扩展及其平台二进制文件 |

## 内容配置

项目中的可编辑配置主要位于 `datafiles/assets/data/`：

- 歌曲谱面位于 `songs/<歌曲目录>/`，谱面 JSON 记录歌曲 BPM、角色和分段音符等数据；部分歌曲目录还包含 `events.json`。
- 角色配置位于 `characters/`，描述角色使用的图像、动画名称、偏移和图标等信息。
- 舞台配置位于 `stages/`，描述舞台名称、摄像机缩放、角色位置和舞台道具等信息。

新增或修改数据时，请沿用现有 JSON 结构，并确认文件名、图像/XML 图集路径与 GML 中读取资源的路径一致。当前启动时使用的谱面、舞台和外部脚本在对象初始化代码中指定；添加新数据不代表它会自动出现在游戏菜单中。

## 许可证

仓库根目录的项目许可证为 [MIT](LICENSE)。部分依赖或资源附有各自的许可证文件，例如 `datafiles/` 下的 Scribble 与 Snap 许可证；使用或再分发这些内容时，请一并查看对应许可证。

## 免责声明

Friday Night Funkin' 及相关原作内容的权利归其各自权利人所有。本仓库是独立的引擎开发项目；仓库所含素材与依赖的权利和许可应以各自来源及许可证为准。
