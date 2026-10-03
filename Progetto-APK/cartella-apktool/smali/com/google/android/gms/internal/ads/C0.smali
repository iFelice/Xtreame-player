.class public final Lcom/google/android/gms/internal/ads/C0;
.super Lcom/google/android/gms/internal/ads/S;
.source "SourceFile"


# instance fields
.field public final synthetic b:Lcom/google/android/gms/internal/ads/Y;

.field public final synthetic c:Lcom/google/android/gms/internal/ads/D0;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/D0;Lcom/google/android/gms/internal/ads/Y;Lcom/google/android/gms/internal/ads/Y;)V
    .locals 0

    .line 1
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/C0;->b:Lcom/google/android/gms/internal/ads/Y;

    .line 2
    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/C0;->c:Lcom/google/android/gms/internal/ads/D0;

    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/S;-><init>(Lcom/google/android/gms/internal/ads/Y;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final b(J)Lcom/google/android/gms/internal/ads/X;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/C0;->b:Lcom/google/android/gms/internal/ads/Y;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/Y;->b(J)Lcom/google/android/gms/internal/ads/X;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object p2, p1, Lcom/google/android/gms/internal/ads/X;->a:Lcom/google/android/gms/internal/ads/Z;

    .line 8
    .line 9
    iget-wide v0, p2, Lcom/google/android/gms/internal/ads/Z;->b:J

    .line 10
    .line 11
    new-instance v2, Lcom/google/android/gms/internal/ads/X;

    .line 12
    .line 13
    new-instance v3, Lcom/google/android/gms/internal/ads/Z;

    .line 14
    .line 15
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/C0;->c:Lcom/google/android/gms/internal/ads/D0;

    .line 16
    .line 17
    iget-wide v4, v4, Lcom/google/android/gms/internal/ads/D0;->G:J

    .line 18
    .line 19
    add-long/2addr v0, v4

    .line 20
    iget-wide v6, p2, Lcom/google/android/gms/internal/ads/Z;->a:J

    .line 21
    .line 22
    invoke-direct {v3, v6, v7, v0, v1}, Lcom/google/android/gms/internal/ads/Z;-><init>(JJ)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/X;->b:Lcom/google/android/gms/internal/ads/Z;

    .line 26
    .line 27
    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/Z;->b:J

    .line 28
    .line 29
    new-instance p2, Lcom/google/android/gms/internal/ads/Z;

    .line 30
    .line 31
    add-long/2addr v0, v4

    .line 32
    iget-wide v4, p1, Lcom/google/android/gms/internal/ads/Z;->a:J

    .line 33
    .line 34
    invoke-direct {p2, v4, v5, v0, v1}, Lcom/google/android/gms/internal/ads/Z;-><init>(JJ)V

    .line 35
    .line 36
    .line 37
    invoke-direct {v2, v3, p2}, Lcom/google/android/gms/internal/ads/X;-><init>(Lcom/google/android/gms/internal/ads/Z;Lcom/google/android/gms/internal/ads/Z;)V

    .line 38
    .line 39
    .line 40
    return-object v2
.end method
