.class public abstract Lcom/google/android/gms/internal/atv_ads_framework/O;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Landroid/net/Uri;

.field public static final b:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    new-instance v1, Landroid/net/Uri$Builder;

    .line 3
    .line 4
    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    .line 5
    .line 6
    .line 7
    const-string v2, "content"

    .line 8
    .line 9
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const-string v2, "signals"

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    const-string v3, "com.google.android.apps.tv.launcherx.ads.signals.AdsSignalsContentProvider"

    .line 28
    .line 29
    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    sput-object v2, Lcom/google/android/gms/internal/atv_ads_framework/O;->a:Landroid/net/Uri;

    .line 38
    .line 39
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    const-string v2, "com.google.android.tvrecommendations.ads.signals.AdsSignalsContentProvider"

    .line 44
    .line 45
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    sput-object v1, Lcom/google/android/gms/internal/atv_ads_framework/O;->b:Landroid/net/Uri;

    .line 54
    .line 55
    new-array v1, v0, [Ljava/lang/Object;

    .line 56
    .line 57
    const-string v2, "atv_atcrc"

    .line 58
    .line 59
    const/4 v3, 0x0

    .line 60
    aput-object v2, v1, v3

    .line 61
    .line 62
    const-string v2, "atv_atcrc_tva"

    .line 63
    .line 64
    const/4 v3, 0x1

    .line 65
    aput-object v2, v1, v3

    .line 66
    .line 67
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/atv_ads_framework/r;->s(I[Ljava/lang/Object;)Lcom/google/android/gms/internal/atv_ads_framework/r;

    .line 68
    .line 69
    .line 70
    return-void
.end method
