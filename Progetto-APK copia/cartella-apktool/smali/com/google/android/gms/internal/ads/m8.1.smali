.class public abstract Lcom/google/android/gms/internal/ads/m8;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/android/gms/internal/ads/f8;

.field public static final b:Lcom/google/android/gms/internal/ads/f8;

.field public static final c:Lcom/google/android/gms/internal/ads/f8;

.field public static final d:Lcom/google/android/gms/internal/ads/f8;

.field public static final e:Lcom/google/android/gms/internal/ads/f8;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/f8;

    .line 2
    .line 3
    const-wide v1, 0x3f9eb851eb851eb8L    # 0.03

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const/4 v2, 0x3

    .line 13
    const-string v3, "gads:cui_monitoring_session_sample_rate"

    .line 14
    .line 15
    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/gms/internal/ads/f8;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V

    .line 16
    .line 17
    .line 18
    sput-object v0, Lcom/google/android/gms/internal/ads/m8;->a:Lcom/google/android/gms/internal/ads/f8;

    .line 19
    .line 20
    const-string v0, "gads:cui_monitoring_enabled"

    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/f8;->j(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/f8;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    sput-object v0, Lcom/google/android/gms/internal/ads/m8;->b:Lcom/google/android/gms/internal/ads/f8;

    .line 28
    .line 29
    const-string v0, "gads:cui_monitoring_v2_enabled"

    .line 30
    .line 31
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/f8;->j(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/f8;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    sput-object v0, Lcom/google/android/gms/internal/ads/m8;->c:Lcom/google/android/gms/internal/ads/f8;

    .line 36
    .line 37
    const-string v0, "gads:cui_monitoring_v3_enabled"

    .line 38
    .line 39
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/f8;->j(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/f8;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    sput-object v0, Lcom/google/android/gms/internal/ads/m8;->d:Lcom/google/android/gms/internal/ads/f8;

    .line 44
    .line 45
    const-string v0, "gads:cui_monitoring_v4_enabled"

    .line 46
    .line 47
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/f8;->j(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/f8;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    sput-object v0, Lcom/google/android/gms/internal/ads/m8;->e:Lcom/google/android/gms/internal/ads/f8;

    .line 52
    .line 53
    return-void
.end method
