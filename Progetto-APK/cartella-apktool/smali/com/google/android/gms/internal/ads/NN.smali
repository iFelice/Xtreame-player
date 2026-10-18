.class public final Lcom/google/android/gms/internal/ads/NN;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/VB;

.field public b:I

.field public final c:Lcom/google/android/gms/internal/ads/MN;

.field public final d:Lcom/google/android/gms/internal/ads/GH;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/VB;Lcom/google/android/gms/internal/ads/MN;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/GH;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/NN;->a:Lcom/google/android/gms/internal/ads/VB;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/NN;->c:Lcom/google/android/gms/internal/ads/MN;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/NN;->d:Lcom/google/android/gms/internal/ads/GH;

    const/high16 p1, 0x100000

    iput p1, p0, Lcom/google/android/gms/internal/ads/NN;->b:I

    return-void
.end method
