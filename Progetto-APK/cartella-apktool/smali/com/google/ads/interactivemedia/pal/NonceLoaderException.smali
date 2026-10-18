.class public final Lcom/google/ads/interactivemedia/pal/NonceLoaderException;
.super Ljava/lang/Exception;
.source "SourceFile"


# instance fields
.field private final zza:I


# direct methods
.method public constructor <init>(ILjava/lang/Exception;)V
    .locals 1

    .line 1
    const-string v0, "NonceLoader exception, errorCode : "

    .line 2
    .line 3
    invoke-static {v0, p1}, La/r;->f(Ljava/lang/String;I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p0, v0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8
    .line 9
    .line 10
    iput p1, p0, Lcom/google/ads/interactivemedia/pal/NonceLoaderException;->zza:I

    .line 11
    .line 12
    return-void
.end method

.method public static zzb(I)Lcom/google/ads/interactivemedia/pal/NonceLoaderException;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/ads/interactivemedia/pal/NonceLoaderException;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/Exception;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0, v1}, Lcom/google/ads/interactivemedia/pal/NonceLoaderException;-><init>(ILjava/lang/Exception;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method


# virtual methods
.method public final zza()I
    .locals 1

    iget v0, p0, Lcom/google/ads/interactivemedia/pal/NonceLoaderException;->zza:I

    return v0
.end method
