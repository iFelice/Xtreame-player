.class public final Lcom/google/android/gms/internal/ads/GE;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/IE;


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/NG;

.field public final b:Lcom/google/android/gms/internal/ads/eG;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/eG;Lcom/google/android/gms/internal/ads/NG;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/GE;->b:Lcom/google/android/gms/internal/ads/eG;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/GE;->a:Lcom/google/android/gms/internal/ads/NG;

    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/ads/eG;)Lcom/google/android/gms/internal/ads/GE;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/GE;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/eG;->F()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/NE;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/NG;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/GE;-><init>(Lcom/google/android/gms/internal/ads/eG;Lcom/google/android/gms/internal/ads/NG;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method
