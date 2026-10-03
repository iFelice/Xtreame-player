.class public final Lcom/google/android/gms/internal/ads/eF;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/EE;


# static fields
.field public static final a:Lcom/google/android/gms/internal/ads/eF;

.field public static final b:Lcom/google/android/gms/internal/ads/zE;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/eF;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/ads/eF;->a:Lcom/google/android/gms/internal/ads/eF;

    .line 7
    .line 8
    new-instance v0, Lcom/google/android/gms/internal/ads/GD;

    .line 9
    .line 10
    const/16 v1, 0x19

    .line 11
    .line 12
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/GD;-><init>(I)V

    .line 13
    .line 14
    .line 15
    new-instance v1, Lcom/google/android/gms/internal/ads/zE;

    .line 16
    .line 17
    const-class v2, Lcom/google/android/gms/internal/ads/eE;

    .line 18
    .line 19
    const-class v3, Lcom/google/android/gms/internal/ads/FC;

    .line 20
    .line 21
    invoke-direct {v1, v0, v2, v3}, Lcom/google/android/gms/internal/ads/zE;-><init>(Lcom/google/android/gms/internal/ads/AE;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 22
    .line 23
    .line 24
    sput-object v1, Lcom/google/android/gms/internal/ads/eF;->b:Lcom/google/android/gms/internal/ads/zE;

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/xc;)Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/dF;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/xc;->K:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v1, Lcom/google/android/gms/internal/ads/gE;

    .line 9
    .line 10
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/gE;->a:Ljava/util/Map;

    .line 11
    .line 12
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    xor-int/lit8 v1, v1, 0x1

    .line 17
    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    sget-object v1, Lcom/google/android/gms/internal/ads/pE;->b:Lcom/google/android/gms/internal/ads/pE;

    .line 21
    .line 22
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/pE;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Lcom/google/android/gms/internal/ads/oE;

    .line 29
    .line 30
    if-nez v1, :cond_0

    .line 31
    .line 32
    sget-object v1, Lcom/google/android/gms/internal/ads/pE;->c:Lcom/google/android/gms/internal/ads/oE;

    .line 33
    .line 34
    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Cw;->Z(Lcom/google/android/gms/internal/ads/xc;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    :cond_1
    return-object v0
.end method

.method public final zza()Ljava/lang/Class;
    .locals 1

    const-class v0, Lcom/google/android/gms/internal/ads/FC;

    return-object v0
.end method

.method public final zzb()Ljava/lang/Class;
    .locals 1

    const-class v0, Lcom/google/android/gms/internal/ads/FC;

    return-object v0
.end method
