.class public final Lcom/google/android/gms/internal/ads/Sg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/IJ;


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/y1;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/y1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Sg;->a:Lcom/google/android/gms/internal/ads/y1;

    .line 5
    .line 6
    return-void
.end method

.method public static a()Lk3/a;
    .locals 3

    .line 1
    new-instance v0, Lk3/a;

    .line 2
    .line 3
    new-instance v1, Lcom/google/android/gms/internal/ads/Aa;

    .line 4
    .line 5
    const/16 v2, 0xe

    .line 6
    .line 7
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/Aa;-><init>(I)V

    .line 8
    .line 9
    .line 10
    new-instance v2, Lcom/google/android/gms/internal/ads/Aa;

    .line 11
    .line 12
    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/Aa;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, v1, v2}, Lk3/a;-><init>(Lcom/google/android/gms/internal/ads/Aa;Lcom/google/android/gms/internal/ads/Aa;)V

    .line 16
    .line 17
    .line 18
    return-object v0
.end method


# virtual methods
.method public final synthetic zzb()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/Sg;->a()Lk3/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
