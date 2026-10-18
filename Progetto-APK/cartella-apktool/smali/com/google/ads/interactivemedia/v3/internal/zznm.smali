.class public final Lcom/google/ads/interactivemedia/v3/internal/zznm;
.super Lcom/google/android/gms/common/api/j;
.source "SourceFile"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/zznf;


# static fields
.field private static final zza:Lcom/google/android/gms/common/api/f;

.field private static final zzb:Lcom/google/android/gms/common/api/a;

.field private static final zzc:Lcom/google/android/gms/common/api/g;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/common/api/f;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/zznm;->zza:Lcom/google/android/gms/common/api/f;

    .line 7
    .line 8
    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/zznj;

    .line 9
    .line 10
    invoke-direct {v1}, Lcom/google/ads/interactivemedia/v3/internal/zznj;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lcom/google/ads/interactivemedia/v3/internal/zznm;->zzb:Lcom/google/android/gms/common/api/a;

    .line 14
    .line 15
    new-instance v2, Lcom/google/android/gms/common/api/g;

    .line 16
    .line 17
    const-string v3, "SignalSdk.API"

    .line 18
    .line 19
    invoke-direct {v2, v3, v1, v0}, Lcom/google/android/gms/common/api/g;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/f;)V

    .line 20
    .line 21
    .line 22
    sput-object v2, Lcom/google/ads/interactivemedia/v3/internal/zznm;->zzc:Lcom/google/android/gms/common/api/g;

    .line 23
    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/zznm;->zzc:Lcom/google/android/gms/common/api/g;

    .line 2
    .line 3
    sget-object v1, Lcom/google/android/gms/common/api/c;->a:Lcom/google/android/gms/common/api/b;

    .line 4
    .line 5
    sget-object v2, Lcom/google/android/gms/common/api/i;->c:Lcom/google/android/gms/common/api/i;

    .line 6
    .line 7
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/gms/common/api/j;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/g;Lcom/google/android/gms/common/api/c;Lcom/google/android/gms/common/api/i;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
