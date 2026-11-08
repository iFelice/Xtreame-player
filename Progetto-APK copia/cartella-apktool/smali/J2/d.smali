.class public final LJ2/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic G:Landroid/view/ViewTreeObserver$OnDrawListener;

.field public final synthetic H:LJ2/e;


# direct methods
.method public constructor <init>(LJ2/e;Landroid/view/ViewTreeObserver$OnDrawListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LJ2/d;->H:LJ2/e;

    .line 5
    .line 6
    iput-object p2, p0, LJ2/d;->G:Landroid/view/ViewTreeObserver$OnDrawListener;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    invoke-static {}, LF2/v;->a()LF2/v;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-static {}, LP2/o;->a()V

    .line 9
    .line 10
    .line 11
    iget-object v0, v0, LF2/v;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, LJ2/d;->H:LJ2/e;

    .line 18
    .line 19
    iget-object v0, v0, LJ2/e;->H:LJ2/f;

    .line 20
    .line 21
    iput-boolean v1, v0, LJ2/f;->H:Z

    .line 22
    .line 23
    iget-object v0, p0, LJ2/d;->H:LJ2/e;

    .line 24
    .line 25
    iget-object v0, v0, LJ2/e;->G:Landroid/view/View;

    .line 26
    .line 27
    iget-object v1, p0, LJ2/d;->G:Landroid/view/ViewTreeObserver$OnDrawListener;

    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, LJ2/d;->H:LJ2/e;

    .line 37
    .line 38
    iget-object v0, v0, LJ2/e;->H:LJ2/f;

    .line 39
    .line 40
    iget-object v0, v0, LJ2/f;->G:Ljava/util/Set;

    .line 41
    .line 42
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 43
    .line 44
    .line 45
    return-void
.end method
