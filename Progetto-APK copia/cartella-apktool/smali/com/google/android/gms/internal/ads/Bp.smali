.class public final synthetic Lcom/google/android/gms/internal/ads/Bp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/ads/Gp;

.field public final synthetic b:LD4/b;

.field public final synthetic c:LD4/b;

.field public final synthetic d:Lcom/google/android/gms/internal/ads/Wc;

.field public final synthetic e:Lcom/google/android/gms/internal/ads/Ow;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/Gp;Lcom/google/android/gms/internal/ads/Fw;Lcom/google/android/gms/internal/ads/Fw;Lcom/google/android/gms/internal/ads/Wc;Lcom/google/android/gms/internal/ads/Ow;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Bp;->a:Lcom/google/android/gms/internal/ads/Gp;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Bp;->b:LD4/b;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/Bp;->c:LD4/b;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/Bp;->d:Lcom/google/android/gms/internal/ads/Wc;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/Bp;->e:Lcom/google/android/gms/internal/ads/Ow;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Bp;->a:Lcom/google/android/gms/internal/ads/Gp;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Bp;->b:LD4/b;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Bp;->c:LD4/b;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/Bp;->d:Lcom/google/android/gms/internal/ads/Wc;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/Bp;->e:Lcom/google/android/gms/internal/ads/Ow;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v5

    .line 18
    check-cast v5, Lcom/google/android/gms/internal/ads/Xc;

    .line 19
    .line 20
    iget-object v5, v5, Lcom/google/android/gms/internal/ads/Xc;->i:Ljava/lang/String;

    .line 21
    .line 22
    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Lorg/json/JSONObject;

    .line 27
    .line 28
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/Wc;->N:Ljava/lang/String;

    .line 29
    .line 30
    new-instance v6, Lcom/google/android/gms/internal/ads/Ep;

    .line 31
    .line 32
    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Lcom/google/android/gms/internal/ads/Xc;

    .line 37
    .line 38
    invoke-direct {v6, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/Ep;-><init>(Lcom/google/android/gms/internal/ads/Xc;Lorg/json/JSONObject;Ljava/lang/String;Lcom/google/android/gms/internal/ads/Ow;)V

    .line 39
    .line 40
    .line 41
    monitor-enter v0

    .line 42
    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Gp;->G3()V

    .line 43
    .line 44
    .line 45
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/Gp;->K:Ljava/util/ArrayDeque;

    .line 46
    .line 47
    invoke-virtual {v1, v6}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    .line 49
    .line 50
    monitor-exit v0

    .line 51
    new-instance v0, Ljava/io/ByteArrayInputStream;

    .line 52
    .line 53
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 54
    .line 55
    invoke-virtual {v5, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 60
    .line 61
    .line 62
    return-object v0

    .line 63
    :catchall_0
    move-exception v1

    .line 64
    monitor-exit v0

    .line 65
    throw v1
.end method
