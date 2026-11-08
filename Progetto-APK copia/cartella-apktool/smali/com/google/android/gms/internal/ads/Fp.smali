.class public final Lcom/google/android/gms/internal/ads/Fp;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Lc4/y;


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/Jp;

.field public final b:Lorg/json/JSONObject;

.field public final c:Lcom/google/android/gms/internal/ads/Xc;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lc4/y;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lc4/y;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/Fp;->d:Lc4/y;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/Jp;Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/Xc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Fp;->a:Lcom/google/android/gms/internal/ads/Jp;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Fp;->b:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/Fp;->c:Lcom/google/android/gms/internal/ads/Xc;

    return-void
.end method
