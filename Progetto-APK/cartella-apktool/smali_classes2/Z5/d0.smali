.class public final LZ5/d0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:LZ5/d0;


# instance fields
.field public final a:Ljava/util/IdentityHashMap;

.field public final b:LZ5/m;

.field public c:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, LZ5/d0;

    .line 2
    .line 3
    new-instance v1, LZ5/m;

    .line 4
    .line 5
    const/16 v2, 0x9

    .line 6
    .line 7
    invoke-direct {v1, v2}, LZ5/m;-><init>(I)V

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, LZ5/d0;-><init>(LZ5/m;)V

    .line 11
    .line 12
    .line 13
    sput-object v0, LZ5/d0;->d:LZ5/d0;

    .line 14
    .line 15
    return-void
.end method

.method public constructor <init>(LZ5/m;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/IdentityHashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, LZ5/d0;->a:Ljava/util/IdentityHashMap;

    .line 10
    .line 11
    iput-object p1, p0, LZ5/d0;->b:LZ5/m;

    .line 12
    .line 13
    return-void
.end method

.method public static a(LZ5/c0;Ljava/util/concurrent/Executor;)V
    .locals 3

    .line 1
    sget-object p1, LZ5/d0;->d:LZ5/d0;

    .line 2
    .line 3
    const-string v0, "No cached instance found for "

    .line 4
    .line 5
    monitor-enter p1

    .line 6
    :try_start_0
    iget-object v1, p1, LZ5/d0;->a:Ljava/util/IdentityHashMap;

    .line 7
    .line 8
    invoke-virtual {v1, p0}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, LZ5/b0;

    .line 13
    .line 14
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 15
    .line 16
    new-instance v2, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    monitor-exit p1

    .line 34
    throw p0
.end method
