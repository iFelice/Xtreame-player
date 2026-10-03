.class public final Lcom/google/android/gms/internal/ads/Fr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/rq;


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/Wr;

.field public final b:Lcom/google/android/gms/internal/ads/qn;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/Wr;Lcom/google/android/gms/internal/ads/qn;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Fr;->a:Lcom/google/android/gms/internal/ads/Wr;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Fr;->b:Lcom/google/android/gms/internal/ads/qn;

    return-void
.end method


# virtual methods
.method public final a(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/sq;
    .locals 2

    .line 1
    sget-object p1, Lcom/google/android/gms/internal/ads/Q7;->w1:Lcom/google/android/gms/internal/ads/J7;

    .line 2
    .line 3
    sget-object v0, Ll3/q;->d:Ll3/q;

    .line 4
    .line 5
    iget-object v0, v0, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Ljava/lang/Boolean;

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    const/4 v0, 0x0

    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Fr;->b:Lcom/google/android/gms/internal/ads/qn;

    .line 21
    .line 22
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/qn;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/Ib;

    .line 23
    .line 24
    .line 25
    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    goto :goto_0

    .line 27
    :catch_0
    move-exception p1

    .line 28
    const-string v1, "Coundn\'t create RTB adapter: "

    .line 29
    .line 30
    invoke-static {v1, p1}, Lp3/h;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    move-object p1, v0

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Fr;->a:Lcom/google/android/gms/internal/ads/Wr;

    .line 36
    .line 37
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/Wr;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 38
    .line 39
    invoke-virtual {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_0

    .line 44
    .line 45
    invoke-virtual {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    check-cast p1, Lcom/google/android/gms/internal/ads/Ib;

    .line 50
    .line 51
    :goto_0
    if-nez p1, :cond_2

    .line 52
    .line 53
    return-object v0

    .line 54
    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/ads/Nq;

    .line 55
    .line 56
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/gb;-><init>()V

    .line 57
    .line 58
    .line 59
    new-instance v1, Lcom/google/android/gms/internal/ads/sq;

    .line 60
    .line 61
    invoke-direct {v1, p1, v0, p2}, Lcom/google/android/gms/internal/ads/sq;-><init>(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/Gj;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    return-object v1
.end method
