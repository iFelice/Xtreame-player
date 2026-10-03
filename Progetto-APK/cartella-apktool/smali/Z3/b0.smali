.class public final LZ3/b0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LZ3/i;

.field public final b:LZ3/g0;

.field public final c:Ljava/lang/Object;

.field public d:Z


# direct methods
.method public constructor <init>(LZ3/i;LZ3/g0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, LZ3/b0;->c:Ljava/lang/Object;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, LZ3/b0;->d:Z

    .line 13
    .line 14
    iput-object p1, p0, LZ3/b0;->a:LZ3/i;

    .line 15
    .line 16
    iput-object p2, p0, LZ3/b0;->b:LZ3/g0;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 5

    .line 1
    iget-object v0, p0, LZ3/b0;->a:LZ3/i;

    .line 2
    .line 3
    const-string v1, "is_pub_misconfigured"

    .line 4
    .line 5
    iget-object v2, v0, LZ3/i;->b:Landroid/content/SharedPreferences;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/4 v2, 0x1

    .line 13
    if-nez v1, :cond_3

    .line 14
    .line 15
    iget-object v1, p0, LZ3/b0;->c:Ljava/lang/Object;

    .line 16
    .line 17
    monitor-enter v1

    .line 18
    :try_start_0
    iget-boolean v4, p0, LZ3/b0;->d:Z

    .line 19
    .line 20
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    if-nez v4, :cond_0

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const-string v1, "consent_status"

    .line 26
    .line 27
    iget-object v0, v0, LZ3/i;->b:Landroid/content/SharedPreferences;

    .line 28
    .line 29
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    :goto_0
    if-eq v0, v2, :cond_2

    .line 34
    .line 35
    const/4 v1, 0x3

    .line 36
    if-ne v0, v1, :cond_1

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    return v3

    .line 40
    :cond_2
    :goto_1
    return v2

    .line 41
    :catchall_0
    move-exception v0

    .line 42
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    throw v0

    .line 44
    :cond_3
    return v2
.end method
