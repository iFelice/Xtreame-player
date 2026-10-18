.class public final LJ6/Z;
.super LJ6/m;
.source "SourceFile"


# static fields
.field public static final synthetic I:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, LJ6/Z;

    .line 2
    .line 3
    invoke-direct {v0}, LJ6/m;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a0(Lx6/j;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    sget-object p2, LJ6/b0;->H:LJ6/n;

    .line 2
    .line 3
    invoke-interface {p1, p2}, Lx6/j;->k(Lx6/i;)Lx6/h;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {p1}, LA0/O;->K(Lx6/h;)V

    .line 8
    .line 9
    .line 10
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 11
    .line 12
    const-string p2, "Dispatchers.Unconfined.dispatch function can only be used by the yield function. If you wrap Unconfined dispatcher in your code, make sure you properly delegate isDispatchNeeded and dispatch calls."

    .line 13
    .line 14
    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Dispatchers.Unconfined"

    .line 2
    .line 3
    return-object v0
.end method
