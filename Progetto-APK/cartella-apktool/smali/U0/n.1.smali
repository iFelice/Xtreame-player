.class public final synthetic LU0/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:Lp0/q;


# direct methods
.method public synthetic constructor <init>(Lp0/q;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, LU0/n;->G:I

    .line 5
    .line 6
    iput-object p1, p0, LU0/n;->H:Lp0/q;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    iget v0, p0, LU0/n;->G:I

    .line 2
    .line 3
    iget-object v1, p0, LU0/n;->H:Lp0/q;

    .line 4
    .line 5
    check-cast v1, Lp0/I;

    .line 6
    .line 7
    invoke-virtual {v1, p1}, Lp0/I;->c(Ljava/lang/Runnable;)Z

    .line 8
    .line 9
    .line 10
    return-void
.end method
