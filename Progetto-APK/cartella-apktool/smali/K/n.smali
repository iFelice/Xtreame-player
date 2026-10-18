.class public final LK/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# instance fields
.field public G:Ljava/lang/String;

.field public H:I


# virtual methods
.method public final newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 3

    .line 1
    new-instance v0, LK/m;

    .line 2
    .line 3
    iget-object v1, p0, LK/n;->G:Ljava/lang/String;

    .line 4
    .line 5
    iget v2, p0, LK/n;->H:I

    .line 6
    .line 7
    invoke-direct {v0, p1, v1, v2}, LK/m;-><init>(Ljava/lang/Runnable;Ljava/lang/String;I)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method
