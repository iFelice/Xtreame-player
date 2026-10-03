.class public final Lcom/google/android/gms/internal/ads/S2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/F2;

.field public final b:Lcom/google/android/gms/internal/ads/Ys;

.field public final c:Lcom/google/android/gms/internal/ads/f0;

.field public d:Z

.field public e:Z

.field public f:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/F2;Lcom/google/android/gms/internal/ads/Ys;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/S2;->a:Lcom/google/android/gms/internal/ads/F2;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/S2;->b:Lcom/google/android/gms/internal/ads/Ys;

    new-instance p1, Lcom/google/android/gms/internal/ads/f0;

    const/16 p2, 0x40

    new-array v0, p2, [B

    invoke-direct {p1, v0, p2}, Lcom/google/android/gms/internal/ads/f0;-><init>([BI)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/S2;->c:Lcom/google/android/gms/internal/ads/f0;

    return-void
.end method
