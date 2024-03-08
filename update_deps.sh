pushd ../sokol
git pull
popd


cp ../sokol/sokol_app.h sokol/
cp ../sokol/sokol_gfx.h sokol/
cp ../sokol/sokol_log.h sokol/
cp ../sokol/sokol_glue.h sokol/
cp ../sokol/util/sokol_imgui.h sokol/

pushd ../cimgui

git fetch --tags
latestTag=$(git describe --tags "$(git rev-list --tags --max-count=1)")
echo Updating cimgui to version $latestTag.
git checkout $latestTag
popd

cp ../cimgui/cimgui.cpp cimgui/
cp ../cimgui/cimgui.h cimgui/

cp ../cimgui/imgui/imconfig.h cimgui/imgui
cp ../cimgui/imgui/imgui.cpp cimgui/imgui
cp ../cimgui/imgui/imgui.h cimgui/imgui
cp ../cimgui/imgui/imgui_internal.h cimgui/imgui
cp ../cimgui/imgui/imgui_demo.cpp cimgui/imgui
cp ../cimgui/imgui/imgui_draw.cpp cimgui/imgui
cp ../cimgui/imgui/imgui_widgets.cpp cimgui/imgui
cp ../cimgui/imgui/imgui_tables.cpp cimgui/imgui
cp ../cimgui/imgui/imstb_rectpack.h cimgui/imgui
cp ../cimgui/imgui/imstb_textedit.h cimgui/imgui
cp ../cimgui/imgui/imstb_truetype.h cimgui/imgui
