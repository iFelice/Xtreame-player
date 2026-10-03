.class public final synthetic Lcom/google/android/gms/internal/ads/nL;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/bo;


# instance fields
.field public final G:I

.field public final H:J

.field public final I:J

.field public final J:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILcom/google/android/gms/internal/ads/p0;JJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/nL;->G:I

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/nL;->J:Ljava/lang/Object;

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/nL;->H:J

    iput-wide p5, p0, Lcom/google/android/gms/internal/ads/nL;->I:J

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/dL;IJJ)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/nL;->J:Ljava/lang/Object;

    iput p2, p0, Lcom/google/android/gms/internal/ads/nL;->G:I

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/nL;->H:J

    iput-wide p5, p0, Lcom/google/android/gms/internal/ads/nL;->I:J

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/eL;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nL;->J:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Lcom/google/android/gms/internal/ads/dL;

    .line 6
    .line 7
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/nL;->H:J

    .line 8
    .line 9
    iget v3, p0, Lcom/google/android/gms/internal/ads/nL;->G:I

    .line 10
    .line 11
    invoke-interface {p1, v0, v3, v1, v2}, Lcom/google/android/gms/internal/ads/eL;->j(Lcom/google/android/gms/internal/ads/dL;IJ)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
