.class public final Lcom/google/android/gms/internal/ads/vx;
.super Lcom/google/android/gms/internal/ads/wd;
.source "SourceFile"


# instance fields
.field public final synthetic G:Lcom/google/android/gms/internal/ads/pC;

.field public final synthetic H:Lcom/google/android/gms/internal/ads/qd;

.field public final synthetic I:Lcom/google/android/gms/internal/ads/lx;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/lx;Lcom/google/android/gms/internal/ads/pC;Lcom/google/android/gms/internal/ads/Lv;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/vx;->G:Lcom/google/android/gms/internal/ads/pC;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/vx;->H:Lcom/google/android/gms/internal/ads/qd;

    .line 4
    .line 5
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/vx;->I:Lcom/google/android/gms/internal/ads/lx;

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/wd;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final c(Ll3/z0;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Ll3/z0;->l()Lf3/j;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lf3/j;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/vx;->I:Lcom/google/android/gms/internal/ads/lx;

    .line 10
    .line 11
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/tx;->e:Ll3/T0;

    .line 12
    .line 13
    iget-object v2, v2, Ll3/T0;->G:Ljava/lang/String;

    .line 14
    .line 15
    new-instance v3, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v4, "Failed to load rewarded ad with error: "

    .line 18
    .line 19
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v0, ", adUnitId: "

    .line 26
    .line 27
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-static {v0}, Lp3/h;->g(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    new-instance v0, Lcom/google/android/gms/internal/ads/Om;

    .line 41
    .line 42
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/vx;->G:Lcom/google/android/gms/internal/ads/pC;

    .line 43
    .line 44
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/Om;-><init>(Lcom/google/android/gms/internal/ads/lx;Lcom/google/android/gms/internal/ads/pC;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/Om;->i(Ll3/z0;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public final d(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final zzg()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/Om;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/vx;->I:Lcom/google/android/gms/internal/ads/lx;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/vx;->G:Lcom/google/android/gms/internal/ads/pC;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/Om;-><init>(Lcom/google/android/gms/internal/ads/lx;Lcom/google/android/gms/internal/ads/pC;)V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/vx;->H:Lcom/google/android/gms/internal/ads/qd;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/Om;->zzb(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
