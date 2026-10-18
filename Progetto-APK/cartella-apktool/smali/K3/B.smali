.class public final LK3/B;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/d;


# instance fields
.field public final a:Lcom/google/android/gms/common/api/e;

.field public final b:LK3/a;

.field public c:Lcom/google/android/gms/common/internal/n;

.field public d:Ljava/util/Set;

.field public e:Z

.field public final synthetic f:LK3/f;


# direct methods
.method public constructor <init>(LK3/f;Lcom/google/android/gms/common/api/e;LK3/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LK3/B;->f:LK3/f;

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, LK3/B;->c:Lcom/google/android/gms/common/internal/n;

    .line 8
    .line 9
    iput-object p1, p0, LK3/B;->d:Ljava/util/Set;

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    iput-boolean p1, p0, LK3/B;->e:Z

    .line 13
    .line 14
    iput-object p2, p0, LK3/B;->a:Lcom/google/android/gms/common/api/e;

    .line 15
    .line 16
    iput-object p3, p0, LK3/B;->b:LK3/a;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final a(LJ3/b;)V
    .locals 3

    .line 1
    iget-object v0, p0, LK3/B;->f:LK3/f;

    .line 2
    .line 3
    iget-object v0, v0, LK3/f;->S:LX3/d;

    .line 4
    .line 5
    new-instance v1, Ll/k;

    .line 6
    .line 7
    const/16 v2, 0x1c

    .line 8
    .line 9
    invoke-direct {v1, v2, p0, p1}, Ll/k;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final b(LJ3/b;)V
    .locals 2

    .line 1
    iget-object v0, p0, LK3/B;->f:LK3/f;

    .line 2
    .line 3
    iget-object v0, v0, LK3/f;->P:Ljava/util/concurrent/ConcurrentHashMap;

    .line 4
    .line 5
    iget-object v1, p0, LK3/B;->b:LK3/a;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, LK3/z;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0, p1}, LK3/z;->o(LJ3/b;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method
