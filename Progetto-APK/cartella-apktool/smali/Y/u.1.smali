.class public final LY/u;
.super Lf/b;
.source "SourceFile"

# interfaces
.implements LE/d;
.implements LE/e;
.implements LD/v;
.implements LD/w;
.implements Le0/L;
.implements La/y;
.implements Lc/f;
.implements LS1/g;
.implements LY/N;
.implements LN/n;


# instance fields
.field public final M:Landroid/app/Activity;

.field public final N:Landroid/content/Context;

.field public final O:Landroid/os/Handler;

.field public final P:LY/K;

.field public final synthetic Q:LY/v;


# direct methods
.method public constructor <init>(Lf/o;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LY/u;->Q:LY/v;

    .line 5
    .line 6
    new-instance v0, Landroid/os/Handler;

    .line 7
    .line 8
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v1, LY/K;

    .line 12
    .line 13
    invoke-direct {v1}, LY/K;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, LY/u;->P:LY/K;

    .line 17
    .line 18
    iput-object p1, p0, LY/u;->M:Landroid/app/Activity;

    .line 19
    .line 20
    iput-object p1, p0, LY/u;->N:Landroid/content/Context;

    .line 21
    .line 22
    iput-object v0, p0, LY/u;->O:Landroid/os/Handler;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final G0(LY/E;)V
    .locals 2

    .line 1
    iget-object v0, p0, LY/u;->Q:LY/v;

    .line 2
    .line 3
    iget-object v0, v0, La/m;->I:Lm2/u;

    .line 4
    .line 5
    iget-object v1, v0, Lm2/u;->I:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 8
    .line 9
    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    iget-object p1, v0, Lm2/u;->H:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast p1, Ljava/lang/Runnable;

    .line 15
    .line 16
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final H0(LM/a;)V
    .locals 1

    .line 1
    iget-object v0, p0, LY/u;->Q:LY/v;

    .line 2
    .line 3
    iget-object v0, v0, La/m;->Q:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final I0(LY/B;)V
    .locals 1

    .line 1
    iget-object v0, p0, LY/u;->Q:LY/v;

    .line 2
    .line 3
    iget-object v0, v0, La/m;->T:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final J0(LY/B;)V
    .locals 1

    .line 1
    iget-object v0, p0, LY/u;->Q:LY/v;

    .line 2
    .line 3
    iget-object v0, v0, La/m;->U:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final K0(LY/B;)V
    .locals 1

    .line 1
    iget-object v0, p0, LY/u;->Q:LY/v;

    .line 2
    .line 3
    iget-object v0, v0, La/m;->R:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final L0(LY/E;)V
    .locals 1

    .line 1
    iget-object v0, p0, LY/u;->Q:LY/v;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, La/m;->j(LY/E;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final M0(LY/B;)V
    .locals 1

    .line 1
    iget-object v0, p0, LY/u;->Q:LY/v;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, La/m;->k(LY/B;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final N0(LY/B;)V
    .locals 1

    .line 1
    iget-object v0, p0, LY/u;->Q:LY/v;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, La/m;->l(LY/B;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final O0(LY/B;)V
    .locals 1

    .line 1
    iget-object v0, p0, LY/u;->Q:LY/v;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, La/m;->m(LY/B;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final P0(LY/B;)V
    .locals 1

    .line 1
    iget-object v0, p0, LY/u;->Q:LY/v;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, La/m;->n(LY/B;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final a()V
    .locals 1

    .line 1
    iget-object v0, p0, LY/u;->Q:LY/v;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final c()Le0/K;
    .locals 1

    .line 1
    iget-object v0, p0, LY/u;->Q:LY/v;

    .line 2
    .line 3
    invoke-virtual {v0}, La/m;->c()Le0/K;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final d()LS1/e;
    .locals 1

    .line 1
    iget-object v0, p0, LY/u;->Q:LY/v;

    .line 2
    .line 3
    iget-object v0, v0, La/m;->K:LS1/f;

    .line 4
    .line 5
    iget-object v0, v0, LS1/f;->b:LS1/e;

    .line 6
    .line 7
    return-object v0
.end method

.method public final h()Le0/o;
    .locals 1

    .line 1
    iget-object v0, p0, LY/u;->Q:LY/v;

    .line 2
    .line 3
    iget-object v0, v0, LY/v;->Y:Le0/o;

    .line 4
    .line 5
    return-object v0
.end method

.method public final w(I)Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, LY/u;->Q:LY/v;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final x()Z
    .locals 1

    .line 1
    iget-object v0, p0, LY/u;->Q:LY/v;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    return v0
.end method
