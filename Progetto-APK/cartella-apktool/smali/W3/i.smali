.class public final LW3/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LA3/a;


# instance fields
.field public final a:LW3/h;

.field public final b:LW3/f;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    sget-object v0, LJ3/f;->b:LJ3/f;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, LW3/h;

    .line 7
    .line 8
    invoke-direct {v1, p1, v0}, LW3/h;-><init>(Landroid/content/Context;LJ3/f;)V

    .line 9
    .line 10
    .line 11
    iput-object v1, p0, LW3/i;->a:LW3/h;

    .line 12
    .line 13
    const-class v0, LW3/f;

    .line 14
    .line 15
    monitor-enter v0

    .line 16
    :try_start_0
    sget-object v1, LW3/f;->c:LW3/f;

    .line 17
    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    new-instance v1, LW3/f;

    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-direct {v1, p1}, LW3/f;-><init>(Landroid/content/Context;)V

    .line 27
    .line 28
    .line 29
    sput-object v1, LW3/f;->c:LW3/f;

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception p1

    .line 33
    goto :goto_1

    .line 34
    :cond_0
    :goto_0
    sget-object p1, LW3/f;->c:LW3/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    .line 36
    monitor-exit v0

    .line 37
    iput-object p1, p0, LW3/i;->b:LW3/f;

    .line 38
    .line 39
    return-void

    .line 40
    :goto_1
    monitor-exit v0

    .line 41
    throw p1
.end method


# virtual methods
.method public final a()Lg4/h;
    .locals 3

    .line 1
    iget-object v0, p0, LW3/i;->a:LW3/h;

    .line 2
    .line 3
    invoke-virtual {v0}, LW3/h;->a()Lg4/h;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, LC2/g;

    .line 8
    .line 9
    const/16 v2, 0x18

    .line 10
    .line 11
    invoke-direct {v1, p0, v2}, LC2/g;-><init>(Ljava/lang/Object;I)V

    .line 12
    .line 13
    .line 14
    check-cast v0, Lg4/r;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    sget-object v2, Lg4/j;->a:Lg4/q;

    .line 20
    .line 21
    invoke-virtual {v0, v2, v1}, Lg4/r;->i(Ljava/util/concurrent/Executor;Lg4/b;)Lg4/r;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    return-object v0
.end method
