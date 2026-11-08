.class public Lcom/google/android/gms/ads/internal/client/LiteSdkInfo;
.super Ll3/c0;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    const-string p1, "com.google.android.gms.ads.internal.client.ILiteSdkInfo"

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/z5;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getAdapterCreator()Lcom/google/android/gms/internal/ads/cb;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/ab;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/ab;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public getLiteSdkVersion()Ll3/L0;
    .locals 4

    .line 1
    new-instance v0, Ll3/L0;

    .line 2
    .line 3
    const v1, 0xe7f40df

    .line 4
    .line 5
    .line 6
    const v2, 0xe7f3e20

    .line 7
    .line 8
    .line 9
    const-string v3, "23.4.0"

    .line 10
    .line 11
    invoke-direct {v0, v1, v2, v3}, Ll3/L0;-><init>(IILjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method
