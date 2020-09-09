# ALV Grid report based on Model-View-Presenter pattern without Dynpro screen

MVP code example using **CL_SALV_TABLE** without additional Dynpro screen. Based on object oriented ABAP.

![ALV grid screen.png](/images/ALV_grid_screen.png)

# Model-View-Presenter
**Model–view–presenter (MVP)** is a derivation of the model–view–controller (MVC) architectural pattern, and is used mostly for building user interfaces.
In MVP, the presenter assumes the functionality of the "middle-man". In MVP, all presentation logic is pushed to the presenter.

![Model_View_Presenter.png](/images/Model_View_Presenter.png)

# Report structure
Create ABAP report, for example **ZTEST_SALV_WO_CONT**, with few includes:
```abap
INCLUDE ztest_salv_wo_cont_model.
INCLUDE ztest_salv_wo_cont_view.
INCLUDE ztest_salv_wo_cont_presenter.
INCLUDE ztest_salv_wo_cont_top.
INCLUDE ztest_salv_wo_cont_sel.
```
