.class public La/n;
.super Landroid/app/Dialog;
.source "SourceFile"

# interfaces
.implements Le0/m;
.implements La/y;
.implements LS1/g;


# instance fields
.field public G:Le0/o;

.field public final H:LS1/f;

.field public final I:La/x;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 7
    .line 8
    .line 9
    invoke-static {p0}, LF2/G;->w(LS1/g;)LS1/f;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, La/n;->H:LS1/f;

    .line 14
    .line 15
    new-instance p1, La/x;

    .line 16
    .line 17
    new-instance p2, La/b;

    .line 18
    .line 19
    const/4 v0, 0x2

    .line 20
    invoke-direct {p2, p0, v0}, La/b;-><init>(Ljava/lang/Object;I)V

    .line 21
    .line 22
    .line 23
    invoke-direct {p1, p2}, La/x;-><init>(Ljava/lang/Runnable;)V

    .line 24
    .line 25
    .line 26
    iput-object p1, p0, La/n;->I:La/x;

    .line 27
    .line 28
    return-void
.end method

.method public static a(La/n;)V
    .locals 1

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Landroid/app/Dialog;->onBackPressed()V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, La/n;->c()V

    .line 7
    .line 8
    .line 9
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final b()Le0/o;
    .locals 1

    .line 1
    iget-object v0, p0, La/n;->G:Le0/o;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Le0/o;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Le0/o;-><init>(Le0/m;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, La/n;->G:Le0/o;

    .line 11
    .line 12
    :cond_0
    return-object v0
.end method

.method public final c()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lz4/q0;->e(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v1, "window!!.decorView"

    .line 13
    .line 14
    invoke-static {v0, v1}, Lz4/q0;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-static {v0, p0}, LZ3/C;->k(Landroid/view/View;Le0/m;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-static {v0}, Lz4/q0;->e(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-static {v0, v1}, Lz4/q0;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-static {v0, p0}, Lcom/bumptech/glide/d;->p(Landroid/view/View;La/y;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-static {v0}, Lz4/q0;->e(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-static {v0, v1}, Lz4/q0;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-static {v0, p0}, LE3/f;->y(Landroid/view/View;LS1/g;)V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public final d()LS1/e;
    .locals 1

    .line 1
    iget-object v0, p0, La/n;->H:LS1/f;

    .line 2
    .line 3
    iget-object v0, v0, LS1/f;->b:LS1/e;

    .line 4
    .line 5
    return-object v0
.end method

.method public final h()Le0/o;
    .locals 1

    .line 1
    invoke-virtual {p0}, La/n;->b()Le0/o;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final onBackPressed()V
    .locals 1

    .line 1
    iget-object v0, p0, La/n;->I:La/x;

    .line 2
    .line 3
    invoke-virtual {v0}, La/x;->b()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 5
    .line 6
    const/16 v1, 0x21

    .line 7
    .line 8
    if-lt v0, v1, :cond_0

    .line 9
    .line 10
    invoke-static {p0}, LD0/b;->c(La/n;)Landroid/window/OnBackInvokedDispatcher;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v1, "onBackInvokedDispatcher"

    .line 15
    .line 16
    invoke-static {v0, v1}, Lz4/q0;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, La/n;->I:La/x;

    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    iput-object v0, v1, La/x;->f:Ljava/lang/Object;

    .line 25
    .line 26
    invoke-virtual {v1}, La/x;->c()V

    .line 27
    .line 28
    .line 29
    :cond_0
    iget-object v0, p0, La/n;->H:LS1/f;

    .line 30
    .line 31
    invoke-virtual {v0, p1}, LS1/f;->b(Landroid/os/Bundle;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, La/n;->b()Le0/o;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    sget-object v0, Le0/i;->ON_CREATE:Le0/i;

    .line 39
    .line 40
    invoke-virtual {p1, v0}, Le0/o;->f(Le0/i;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Bundle;
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "super.onSaveInstanceState()"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lz4/q0;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, La/n;->H:LS1/f;

    .line 11
    .line 12
    invoke-virtual {v1, v0}, LS1/f;->c(Landroid/os/Bundle;)V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method

.method public final onStart()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, La/n;->b()Le0/o;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    sget-object v1, Le0/i;->ON_RESUME:Le0/i;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Le0/o;->f(Le0/i;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 1
    invoke-virtual {p0}, La/n;->b()Le0/o;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Le0/i;->ON_DESTROY:Le0/i;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Le0/o;->f(Le0/i;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, La/n;->G:Le0/o;

    .line 12
    .line 13
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public setContentView(I)V
    .locals 0

    .line 7
    invoke-virtual {p0}, La/n;->c()V

    .line 8
    invoke-super {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1

    .line 1
    const-string v0, "view"

    invoke-static {p1, v0}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, La/n;->c()V

    .line 3
    invoke-super {p0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 4
    const-string v0, "view"

    invoke-static {p1, v0}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, La/n;->c()V

    .line 6
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
