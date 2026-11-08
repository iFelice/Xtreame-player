.class public abstract Lcom/google/android/gms/internal/ads/B8;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/android/gms/internal/ads/f8;

.field public static final b:Lcom/google/android/gms/internal/ads/f8;

.field public static final c:Lcom/google/android/gms/internal/ads/f8;

.field public static final d:Lcom/google/android/gms/internal/ads/f8;

.field public static final e:Lcom/google/android/gms/internal/ads/f8;

.field public static final f:Lcom/google/android/gms/internal/ads/f8;

.field public static final g:Lcom/google/android/gms/internal/ads/f8;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    const-string v0, "gads:dynamite_load:fail:sample_rate"

    .line 2
    .line 3
    const-wide/16 v1, 0x2710

    .line 4
    .line 5
    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/ads/f8;->b(JLjava/lang/String;)Lcom/google/android/gms/internal/ads/f8;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lcom/google/android/gms/internal/ads/B8;->a:Lcom/google/android/gms/internal/ads/f8;

    .line 10
    .line 11
    const-string v0, "gads:report_dynamite_crash_in_background_thread"

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/f8;->j(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/f8;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    sput-object v0, Lcom/google/android/gms/internal/ads/B8;->b:Lcom/google/android/gms/internal/ads/f8;

    .line 19
    .line 20
    new-instance v0, Lcom/google/android/gms/internal/ads/f8;

    .line 21
    .line 22
    const-string v2, "gads:public_beta:traffic_multiplier"

    .line 23
    .line 24
    const-string v3, "1.0"

    .line 25
    .line 26
    const/4 v4, 0x4

    .line 27
    invoke-direct {v0, v2, v3, v4}, Lcom/google/android/gms/internal/ads/f8;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V

    .line 28
    .line 29
    .line 30
    sput-object v0, Lcom/google/android/gms/internal/ads/B8;->c:Lcom/google/android/gms/internal/ads/f8;

    .line 31
    .line 32
    new-instance v0, Lcom/google/android/gms/internal/ads/f8;

    .line 33
    .line 34
    const-string v2, "gads:sdk_crash_report_class_prefix"

    .line 35
    .line 36
    const-string v3, "com.google."

    .line 37
    .line 38
    invoke-direct {v0, v2, v3, v4}, Lcom/google/android/gms/internal/ads/f8;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V

    .line 39
    .line 40
    .line 41
    sput-object v0, Lcom/google/android/gms/internal/ads/B8;->d:Lcom/google/android/gms/internal/ads/f8;

    .line 42
    .line 43
    const-string v0, "gads:sdk_crash_report_enabled"

    .line 44
    .line 45
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/f8;->j(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/f8;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    sput-object v0, Lcom/google/android/gms/internal/ads/B8;->e:Lcom/google/android/gms/internal/ads/f8;

    .line 50
    .line 51
    const-string v0, "gads:sdk_crash_report_full_stacktrace"

    .line 52
    .line 53
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/f8;->j(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/f8;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    sput-object v0, Lcom/google/android/gms/internal/ads/B8;->f:Lcom/google/android/gms/internal/ads/f8;

    .line 58
    .line 59
    new-instance v0, Lcom/google/android/gms/internal/ads/f8;

    .line 60
    .line 61
    const-wide v1, 0x3f847ae147ae147bL    # 0.01

    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    const/4 v2, 0x3

    .line 71
    const-string v3, "gads:trapped_exception_sample_rate"

    .line 72
    .line 73
    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/gms/internal/ads/f8;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V

    .line 74
    .line 75
    .line 76
    sput-object v0, Lcom/google/android/gms/internal/ads/B8;->g:Lcom/google/android/gms/internal/ads/f8;

    .line 77
    .line 78
    return-void
.end method
