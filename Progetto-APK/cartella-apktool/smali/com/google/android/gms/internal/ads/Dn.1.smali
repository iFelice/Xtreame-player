.class public final synthetic Lcom/google/android/gms/internal/ads/Dn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic G:Lx/e;


# direct methods
.method public synthetic constructor <init>(Lx/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Dn;->G:Lx/e;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 6

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Dn;->G:Lx/e;

    .line 2
    .line 3
    iget-object v0, p1, Lx/e;->f:Ljava/util/AbstractCollection;

    .line 4
    .line 5
    check-cast v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/4 v2, 0x1

    .line 16
    if-eqz v1, :cond_2

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Lcom/google/android/gms/internal/ads/yo;

    .line 23
    .line 24
    iget-object v3, p1, Lx/e;->e:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v3, Lcom/google/android/gms/internal/ads/oo;

    .line 27
    .line 28
    iget-boolean v4, v1, Lcom/google/android/gms/internal/ads/yo;->d:Z

    .line 29
    .line 30
    if-nez v4, :cond_1

    .line 31
    .line 32
    iget-boolean v4, v1, Lcom/google/android/gms/internal/ads/yo;->c:Z

    .line 33
    .line 34
    if-eqz v4, :cond_1

    .line 35
    .line 36
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/yo;->b:Lm0/q;

    .line 37
    .line 38
    invoke-virtual {v4}, Lm0/q;->d()Lcom/google/android/gms/internal/ads/o;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    new-instance v5, Lm0/q;

    .line 43
    .line 44
    invoke-direct {v5, v2}, Lm0/q;-><init>(I)V

    .line 45
    .line 46
    .line 47
    iput-object v5, v1, Lcom/google/android/gms/internal/ads/yo;->b:Lm0/q;

    .line 48
    .line 49
    const/4 v5, 0x0

    .line 50
    iput-boolean v5, v1, Lcom/google/android/gms/internal/ads/yo;->c:Z

    .line 51
    .line 52
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/yo;->a:Ljava/lang/Object;

    .line 53
    .line 54
    invoke-interface {v3, v1, v4}, Lcom/google/android/gms/internal/ads/oo;->b(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/o;)V

    .line 55
    .line 56
    .line 57
    :cond_1
    iget-object v1, p1, Lx/e;->d:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast v1, Lcom/google/android/gms/internal/ads/un;

    .line 60
    .line 61
    check-cast v1, Lcom/google/android/gms/internal/ads/ts;

    .line 62
    .line 63
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/ts;->a:Landroid/os/Handler;

    .line 64
    .line 65
    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-eqz v1, :cond_0

    .line 70
    .line 71
    :cond_2
    return v2
.end method
