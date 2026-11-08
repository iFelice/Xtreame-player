.class public final Lp6/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:[Lp6/b;


# direct methods
.method public constructor <init>(ILjava/util/concurrent/ThreadFactory;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-array v0, p1, [Lp6/b;

    .line 5
    .line 6
    iput-object v0, p0, Lp6/a;->a:[Lp6/b;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    :goto_0
    if-ge v0, p1, :cond_0

    .line 10
    .line 11
    iget-object v1, p0, Lp6/a;->a:[Lp6/b;

    .line 12
    .line 13
    new-instance v2, Lp6/b;

    .line 14
    .line 15
    invoke-direct {v2, p2}, Lp6/h;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    .line 16
    .line 17
    .line 18
    aput-object v2, v1, v0

    .line 19
    .line 20
    add-int/lit8 v0, v0, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-void
.end method
