.class public abstract LO6/h;
.super LJ6/E;
.source "SourceFile"


# instance fields
.field public final I:LO6/c;


# direct methods
.method public constructor <init>(IIJLjava/lang/String;)V
    .locals 7

    .line 1
    invoke-direct {p0}, LJ6/m;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v6, LO6/c;

    .line 5
    .line 6
    move-object v0, v6

    .line 7
    move v1, p1

    .line 8
    move v2, p2

    .line 9
    move-wide v3, p3

    .line 10
    move-object v5, p5

    .line 11
    invoke-direct/range {v0 .. v5}, LO6/c;-><init>(IIJLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iput-object v6, p0, LO6/h;->I:LO6/c;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final a0(Lx6/j;Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    iget-object p1, p0, LO6/h;->I:LO6/c;

    .line 2
    .line 3
    sget-object v0, LO6/c;->N:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1, p2, v0, v0}, LO6/c;->E(Ljava/lang/Runnable;ZZ)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
