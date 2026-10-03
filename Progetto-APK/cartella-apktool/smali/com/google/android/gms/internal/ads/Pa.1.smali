.class public abstract Lcom/google/android/gms/internal/ads/Pa;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/nio/charset/Charset;

.field public static final b:Lcom/google/android/gms/internal/ads/Aa;

.field public static final c:Lcom/google/android/gms/internal/ads/Aa;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "UTF-8"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/google/android/gms/internal/ads/Pa;->a:Ljava/nio/charset/Charset;

    .line 8
    .line 9
    new-instance v0, Lcom/google/android/gms/internal/ads/Aa;

    .line 10
    .line 11
    const/4 v1, 0x3

    .line 12
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/Aa;-><init>(I)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lcom/google/android/gms/internal/ads/Pa;->b:Lcom/google/android/gms/internal/ads/Aa;

    .line 16
    .line 17
    new-instance v0, Lcom/google/android/gms/internal/ads/Aa;

    .line 18
    .line 19
    const/4 v1, 0x2

    .line 20
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/Aa;-><init>(I)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lcom/google/android/gms/internal/ads/Pa;->c:Lcom/google/android/gms/internal/ads/Aa;

    .line 24
    .line 25
    return-void
.end method
