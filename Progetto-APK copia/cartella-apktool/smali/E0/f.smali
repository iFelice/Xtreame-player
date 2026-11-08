.class public final LE0/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LT0/b;
.implements LS0/n;


# instance fields
.field public final synthetic G:LE0/j;


# direct methods
.method public synthetic constructor <init>(LE0/j;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LE0/f;->G:LE0/j;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    iget-object v0, p0, LE0/f;->G:LE0/j;

    .line 2
    .line 3
    sget-object v1, LT0/c;->b:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    sget-boolean v2, LT0/c;->c:Z

    .line 7
    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    sget-wide v2, LT0/c;->d:J

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception v0

    .line 14
    goto :goto_1

    .line 15
    :cond_0
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    iput-wide v2, v0, LE0/j;->L:J

    .line 22
    .line 23
    const/4 v1, 0x1

    .line 24
    invoke-virtual {v0, v1}, LE0/j;->x(Z)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    throw v0
.end method

.method public final b()V
    .locals 2

    .line 1
    iget-object v0, p0, LE0/f;->G:LE0/j;

    .line 2
    .line 3
    iget-object v1, v0, LE0/j;->A:LS0/m;

    .line 4
    .line 5
    invoke-virtual {v1}, LS0/m;->b()V

    .line 6
    .line 7
    .line 8
    iget-object v0, v0, LE0/j;->C:LI0/u;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    throw v0
.end method
