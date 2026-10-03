.class public final Lcom/google/android/gms/internal/ads/Wq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/rq;


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/qn;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/qn;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Wq;->a:Lcom/google/android/gms/internal/ads/qn;

    return-void
.end method


# virtual methods
.method public final a(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/sq;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Wq;->a:Lcom/google/android/gms/internal/ads/qn;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/qn;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/gw;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    new-instance v0, Lcom/google/android/gms/internal/ads/Nq;

    .line 8
    .line 9
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/gb;-><init>()V

    .line 10
    .line 11
    .line 12
    new-instance v1, Lcom/google/android/gms/internal/ads/sq;

    .line 13
    .line 14
    invoke-direct {v1, p1, v0, p2}, Lcom/google/android/gms/internal/ads/sq;-><init>(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/Gj;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-object v1
.end method
