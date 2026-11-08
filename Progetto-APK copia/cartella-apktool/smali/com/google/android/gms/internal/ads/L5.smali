.class public final Lcom/google/android/gms/internal/ads/L5;
.super Ll3/T;
.source "SourceFile"


# instance fields
.field public final H:Lg3/b;


# direct methods
.method public constructor <init>(Lg3/b;)V
    .locals 1

    .line 1
    const-string v0, "com.google.android.gms.ads.internal.client.IAppEventListener"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/z5;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/L5;->H:Lg3/b;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final G2(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/L5;->H:Lg3/b;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lg3/b;->o(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
