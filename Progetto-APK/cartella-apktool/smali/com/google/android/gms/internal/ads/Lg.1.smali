.class public final Lcom/google/android/gms/internal/ads/Lg;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/google/android/gms/internal/ads/Z9;

.field public final c:Lcom/google/android/gms/internal/ads/Bg;

.field public final d:Lcom/google/android/gms/internal/ads/Lg;

.field public final e:Lcom/google/android/gms/internal/ads/MJ;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/Bg;Landroid/content/Context;Lcom/google/android/gms/internal/ads/Z9;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p0, p0, Lcom/google/android/gms/internal/ads/Lg;->d:Lcom/google/android/gms/internal/ads/Lg;

    .line 5
    .line 6
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Lg;->c:Lcom/google/android/gms/internal/ads/Bg;

    .line 7
    .line 8
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Lg;->a:Landroid/content/Context;

    .line 9
    .line 10
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/Lg;->b:Lcom/google/android/gms/internal/ads/Z9;

    .line 11
    .line 12
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/JJ;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/JJ;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/JJ;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/JJ;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    new-instance p3, Lcom/google/android/gms/internal/ads/Rn;

    .line 21
    .line 22
    invoke-direct {p3, p2}, Lcom/google/android/gms/internal/ads/Rn;-><init>(Lcom/google/android/gms/internal/ads/JJ;)V

    .line 23
    .line 24
    .line 25
    new-instance p2, Lcom/google/android/gms/internal/ads/cm;

    .line 26
    .line 27
    const/16 v0, 0xa

    .line 28
    .line 29
    invoke-direct {p2, p1, p3, v0}, Lcom/google/android/gms/internal/ads/cm;-><init>(Lcom/google/android/gms/internal/ads/MJ;Lcom/google/android/gms/internal/ads/MJ;I)V

    .line 30
    .line 31
    .line 32
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/HJ;->b(Lcom/google/android/gms/internal/ads/IJ;)Lcom/google/android/gms/internal/ads/MJ;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Lg;->e:Lcom/google/android/gms/internal/ads/MJ;

    .line 37
    .line 38
    return-void
.end method
