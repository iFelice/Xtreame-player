.class public Lpe/hf/black20/SearchActivity;
.super Lf/o;
.source "SourceFile"


# instance fields
.field public e0:Landroid/widget/FrameLayout;

.field public f0:LY/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf/o;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, LY/v;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const p1, 0x7f0e0049

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lf/o;->setContentView(I)V

    .line 8
    .line 9
    .line 10
    const p1, 0x7f0b0229

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lf/o;->findViewById(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroid/widget/FrameLayout;

    .line 18
    .line 19
    iput-object v0, p0, Lpe/hf/black20/SearchActivity;->e0:Landroid/widget/FrameLayout;

    .line 20
    .line 21
    iget-object v0, p0, LY/v;->X:Lf/S;

    .line 22
    .line 23
    invoke-virtual {v0}, Lf/S;->R()LY/K;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    new-instance v1, LY/a;

    .line 31
    .line 32
    invoke-direct {v1, v0}, LY/a;-><init>(LY/K;)V

    .line 33
    .line 34
    .line 35
    iput-object v1, p0, Lpe/hf/black20/SearchActivity;->f0:LY/a;

    .line 36
    .line 37
    new-instance v0, Lb7/A1;

    .line 38
    .line 39
    invoke-direct {v0}, Lb7/A1;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, p1, v0}, LY/a;->g(ILY/s;)V

    .line 43
    .line 44
    .line 45
    iget-object p1, p0, Lpe/hf/black20/SearchActivity;->f0:LY/a;

    .line 46
    .line 47
    const/4 v0, 0x0

    .line 48
    invoke-virtual {p1, v0}, LY/a;->d(Z)I

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public final onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, LY/v;->onResume()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
