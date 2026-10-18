.class public final Lu4/b;
.super LM2/f;
.source "SourceFile"


# instance fields
.field public final synthetic I:Lcom/google/android/tv/ads/controls/SideDrawerFragment;


# direct methods
.method public constructor <init>(Lcom/google/android/tv/ads/controls/SideDrawerFragment;Landroid/widget/ImageView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lu4/b;->I:Lcom/google/android/tv/ads/controls/SideDrawerFragment;

    .line 2
    .line 3
    invoke-direct {p0, p2}, LM2/f;-><init>(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;LN2/e;)V
    .locals 3

    .line 1
    check-cast p1, Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    iget-object p2, p0, Lu4/b;->I:Lcom/google/android/tv/ads/controls/SideDrawerFragment;

    .line 4
    .line 5
    invoke-virtual {p2}, LY/s;->M()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Lcom/google/android/gms/internal/atv_ads_framework/x0;->C(Landroid/content/Context;)Lcom/google/android/gms/internal/atv_ads_framework/x0;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {}, Lcom/google/android/gms/internal/atv_ads_framework/O0;->l()Lcom/google/android/gms/internal/atv_ads_framework/N0;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Lcom/google/android/gms/internal/atv_ads_framework/N0;->e()V

    .line 18
    .line 19
    .line 20
    const/4 v2, 0x2

    .line 21
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/atv_ads_framework/N0;->g(I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/google/android/gms/internal/atv_ads_framework/T;->b()Lcom/google/android/gms/internal/atv_ads_framework/U;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Lcom/google/android/gms/internal/atv_ads_framework/O0;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/atv_ads_framework/x0;->E(Lcom/google/android/gms/internal/atv_ads_framework/O0;)V

    .line 31
    .line 32
    .line 33
    iget-object p2, p2, Lcom/google/android/tv/ads/controls/SideDrawerFragment;->F0:Landroid/widget/ImageView;

    .line 34
    .line 35
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public final d(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lu4/b;->I:Lcom/google/android/tv/ads/controls/SideDrawerFragment;

    .line 2
    .line 3
    invoke-virtual {p1}, LY/s;->M()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/google/android/gms/internal/atv_ads_framework/x0;->C(Landroid/content/Context;)Lcom/google/android/gms/internal/atv_ads_framework/x0;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {}, Lcom/google/android/gms/internal/atv_ads_framework/O0;->l()Lcom/google/android/gms/internal/atv_ads_framework/N0;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Lcom/google/android/gms/internal/atv_ads_framework/N0;->e()V

    .line 16
    .line 17
    .line 18
    const/4 v2, 0x2

    .line 19
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/atv_ads_framework/N0;->g(I)V

    .line 20
    .line 21
    .line 22
    const/4 v2, 0x4

    .line 23
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/atv_ads_framework/N0;->f(I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/google/android/gms/internal/atv_ads_framework/T;->b()Lcom/google/android/gms/internal/atv_ads_framework/U;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Lcom/google/android/gms/internal/atv_ads_framework/O0;

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/atv_ads_framework/x0;->E(Lcom/google/android/gms/internal/atv_ads_framework/O0;)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p1, Lcom/google/android/tv/ads/controls/SideDrawerFragment;->E0:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 36
    .line 37
    const/16 v1, 0x8

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p1, Lcom/google/android/tv/ads/controls/SideDrawerFragment;->H0:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 43
    .line 44
    const/4 v1, 0x0

    .line 45
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 46
    .line 47
    .line 48
    iget-object p1, p1, Lcom/google/android/tv/ads/controls/SideDrawerFragment;->I0:Landroid/widget/Button;

    .line 49
    .line 50
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 51
    .line 52
    .line 53
    return-void
.end method
