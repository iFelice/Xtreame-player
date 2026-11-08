.class public final LW4/c;
.super LM2/c;
.source "SourceFile"


# instance fields
.field public J:Landroid/widget/ImageView;

.field public final synthetic K:Lk/d;

.field public final synthetic L:Landroid/app/Activity;

.field public final synthetic M:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# direct methods
.method public constructor <init>(LW4/e;Lk/d;Landroid/app/Activity;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .locals 0

    .line 1
    iput-object p2, p0, LW4/c;->K:Lk/d;

    .line 2
    .line 3
    iput-object p3, p0, LW4/c;->L:Landroid/app/Activity;

    .line 4
    .line 5
    iput-object p4, p0, LW4/c;->M:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 6
    .line 7
    invoke-direct {p0}, LM2/c;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;LN2/e;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    const-string p2, "Downloading Image Success!!!"

    .line 4
    .line 5
    invoke-static {p2}, Ly4/k;->S(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p2, p0, LW4/c;->J:Landroid/widget/ImageView;

    .line 9
    .line 10
    if-eqz p2, :cond_0

    .line 11
    .line 12
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-virtual {p0}, LW4/c;->k()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final d(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    const-string v0, "Downloading Image Failed"

    .line 2
    .line 3
    invoke-static {v0}, Ly4/k;->S(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, LW4/c;->J:Landroid/widget/ImageView;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    .line 14
    .line 15
    const-string v0, "Image loading failed!"

    .line 16
    .line 17
    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const-string p1, "Image download failure "

    .line 21
    .line 22
    invoke-static {p1}, Ly4/k;->V(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, LW4/c;->M:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 26
    .line 27
    if-eqz p1, :cond_1

    .line 28
    .line 29
    iget-object v0, p0, LW4/c;->K:Lk/d;

    .line 30
    .line 31
    invoke-virtual {v0}, Lk/d;->i()Landroid/widget/ImageView;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0, p1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 40
    .line 41
    .line 42
    :cond_1
    const/4 p1, 0x0

    .line 43
    throw p1
.end method

.method public final i(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    const-string v0, "Downloading Image Cleared"

    .line 2
    .line 3
    invoke-static {v0}, Ly4/k;->S(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, LW4/c;->J:Landroid/widget/ImageView;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-virtual {p0}, LW4/c;->k()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final k()V
    .locals 1

    .line 1
    iget-object v0, p0, LW4/c;->K:Lk/d;

    .line 2
    .line 3
    invoke-virtual {v0}, Lk/d;->f()LU4/b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    throw v0
.end method
