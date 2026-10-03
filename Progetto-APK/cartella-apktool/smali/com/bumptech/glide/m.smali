.class public final Lcom/bumptech/glide/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJ2/a;


# instance fields
.field public final a:LJ2/t;

.field public final synthetic b:Lcom/bumptech/glide/n;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/n;LJ2/t;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/bumptech/glide/m;->b:Lcom/bumptech/glide/n;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/bumptech/glide/m;->a:LJ2/t;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lcom/bumptech/glide/m;->b:Lcom/bumptech/glide/n;

    .line 4
    .line 5
    monitor-enter p1

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/m;->a:LJ2/t;

    .line 7
    .line 8
    invoke-virtual {v0}, LJ2/t;->e()V

    .line 9
    .line 10
    .line 11
    monitor-exit p1

    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception v0

    .line 14
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    throw v0

    .line 16
    :cond_0
    :goto_0
    return-void
.end method
