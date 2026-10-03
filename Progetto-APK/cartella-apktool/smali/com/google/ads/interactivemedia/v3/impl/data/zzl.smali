.class final Lcom/google/ads/interactivemedia/v3/impl/data/zzl;
.super Lcom/google/ads/interactivemedia/v3/impl/data/zzf;
.source "SourceFile"


# instance fields
.field private bitrate:I

.field private disableUi:Z

.field private enableFocusSkipButton:Z

.field private enablePreloading:Z

.field private loadVideoTimeout:I

.field private mimeTypes:Lcom/google/ads/interactivemedia/v3/internal/zzrm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/interactivemedia/v3/internal/zzrm<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private playAdsAfterTime:D

.field private set$0:B

.field private uiElements:Lcom/google/ads/interactivemedia/v3/internal/zzrr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/interactivemedia/v3/internal/zzrr<",
            "Lcom/google/ads/interactivemedia/v3/api/UiElement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/impl/data/zzf;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/impl/data/zzg;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/impl/data/zzf;-><init>()V

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/zzg;->bitrate()I

    move-result v0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/zzl;->bitrate:I

    .line 3
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/zzg;->mimeTypes()Lcom/google/ads/interactivemedia/v3/internal/zzrm;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/zzl;->mimeTypes:Lcom/google/ads/interactivemedia/v3/internal/zzrm;

    .line 4
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/zzg;->uiElements()Lcom/google/ads/interactivemedia/v3/internal/zzrr;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/zzl;->uiElements:Lcom/google/ads/interactivemedia/v3/internal/zzrr;

    .line 5
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/zzg;->enablePreloading()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/zzl;->enablePreloading:Z

    .line 6
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/zzg;->enableFocusSkipButton()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/zzl;->enableFocusSkipButton:Z

    .line 7
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/zzg;->playAdsAfterTime()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/zzl;->playAdsAfterTime:D

    .line 8
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/zzg;->disableUi()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/zzl;->disableUi:Z

    .line 9
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/zzg;->loadVideoTimeout()I

    move-result p1

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/zzl;->loadVideoTimeout:I

    const/16 p1, 0x3f

    iput-byte p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/zzl;->set$0:B

    return-void
.end method


# virtual methods
.method public build()Lcom/google/ads/interactivemedia/v3/impl/data/zzg;
    .locals 13

    .line 1
    iget-byte v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/zzl;->set$0:B

    .line 2
    .line 3
    const/16 v1, 0x3f

    .line 4
    .line 5
    if-eq v0, v1, :cond_6

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    iget-byte v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/zzl;->set$0:B

    .line 13
    .line 14
    and-int/lit8 v1, v1, 0x1

    .line 15
    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    const-string v1, " bitrate"

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-byte v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/zzl;->set$0:B

    .line 24
    .line 25
    and-int/lit8 v1, v1, 0x2

    .line 26
    .line 27
    if-nez v1, :cond_1

    .line 28
    .line 29
    const-string v1, " enablePreloading"

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    :cond_1
    iget-byte v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/zzl;->set$0:B

    .line 35
    .line 36
    and-int/lit8 v1, v1, 0x4

    .line 37
    .line 38
    if-nez v1, :cond_2

    .line 39
    .line 40
    const-string v1, " enableFocusSkipButton"

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    :cond_2
    iget-byte v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/zzl;->set$0:B

    .line 46
    .line 47
    and-int/lit8 v1, v1, 0x8

    .line 48
    .line 49
    if-nez v1, :cond_3

    .line 50
    .line 51
    const-string v1, " playAdsAfterTime"

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    :cond_3
    iget-byte v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/zzl;->set$0:B

    .line 57
    .line 58
    and-int/lit8 v1, v1, 0x10

    .line 59
    .line 60
    if-nez v1, :cond_4

    .line 61
    .line 62
    const-string v1, " disableUi"

    .line 63
    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    :cond_4
    iget-byte v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/zzl;->set$0:B

    .line 68
    .line 69
    and-int/lit8 v1, v1, 0x20

    .line 70
    .line 71
    if-nez v1, :cond_5

    .line 72
    .line 73
    const-string v1, " loadVideoTimeout"

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 79
    .line 80
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    const-string v2, "Missing required properties:"

    .line 85
    .line 86
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    throw v1

    .line 94
    :cond_6
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/data/zzn;

    .line 95
    .line 96
    iget v3, p0, Lcom/google/ads/interactivemedia/v3/impl/data/zzl;->bitrate:I

    .line 97
    .line 98
    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/impl/data/zzl;->mimeTypes:Lcom/google/ads/interactivemedia/v3/internal/zzrm;

    .line 99
    .line 100
    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/impl/data/zzl;->uiElements:Lcom/google/ads/interactivemedia/v3/internal/zzrr;

    .line 101
    .line 102
    iget-boolean v6, p0, Lcom/google/ads/interactivemedia/v3/impl/data/zzl;->enablePreloading:Z

    .line 103
    .line 104
    iget-boolean v7, p0, Lcom/google/ads/interactivemedia/v3/impl/data/zzl;->enableFocusSkipButton:Z

    .line 105
    .line 106
    iget-wide v8, p0, Lcom/google/ads/interactivemedia/v3/impl/data/zzl;->playAdsAfterTime:D

    .line 107
    .line 108
    iget-boolean v10, p0, Lcom/google/ads/interactivemedia/v3/impl/data/zzl;->disableUi:Z

    .line 109
    .line 110
    iget v11, p0, Lcom/google/ads/interactivemedia/v3/impl/data/zzl;->loadVideoTimeout:I

    .line 111
    .line 112
    const/4 v12, 0x0

    .line 113
    move-object v2, v0

    .line 114
    invoke-direct/range {v2 .. v12}, Lcom/google/ads/interactivemedia/v3/impl/data/zzn;-><init>(ILcom/google/ads/interactivemedia/v3/internal/zzrm;Lcom/google/ads/interactivemedia/v3/internal/zzrr;ZZDZILcom/google/ads/interactivemedia/v3/impl/data/zzm;)V

    .line 115
    .line 116
    .line 117
    return-object v0
.end method

.method public setBitrate(I)Lcom/google/ads/interactivemedia/v3/impl/data/zzf;
    .locals 0

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/zzl;->bitrate:I

    iget-byte p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/zzl;->set$0:B

    or-int/lit8 p1, p1, 0x1

    int-to-byte p1, p1

    iput-byte p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/zzl;->set$0:B

    return-object p0
.end method

.method public setDisableUi(Z)Lcom/google/ads/interactivemedia/v3/impl/data/zzf;
    .locals 0

    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/zzl;->disableUi:Z

    iget-byte p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/zzl;->set$0:B

    or-int/lit8 p1, p1, 0x10

    int-to-byte p1, p1

    iput-byte p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/zzl;->set$0:B

    return-object p0
.end method

.method public setEnableFocusSkipButton(Z)Lcom/google/ads/interactivemedia/v3/impl/data/zzf;
    .locals 0

    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/zzl;->enableFocusSkipButton:Z

    iget-byte p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/zzl;->set$0:B

    or-int/lit8 p1, p1, 0x4

    int-to-byte p1, p1

    iput-byte p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/zzl;->set$0:B

    return-object p0
.end method

.method public setEnablePreloading(Z)Lcom/google/ads/interactivemedia/v3/impl/data/zzf;
    .locals 0

    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/zzl;->enablePreloading:Z

    iget-byte p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/zzl;->set$0:B

    or-int/lit8 p1, p1, 0x2

    int-to-byte p1, p1

    iput-byte p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/zzl;->set$0:B

    return-object p0
.end method

.method public setLoadVideoTimeout(I)Lcom/google/ads/interactivemedia/v3/impl/data/zzf;
    .locals 0

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/zzl;->loadVideoTimeout:I

    iget-byte p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/zzl;->set$0:B

    or-int/lit8 p1, p1, 0x20

    int-to-byte p1, p1

    iput-byte p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/zzl;->set$0:B

    return-object p0
.end method

.method public setMimeTypes(Ljava/util/List;)Lcom/google/ads/interactivemedia/v3/impl/data/zzf;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/ads/interactivemedia/v3/impl/data/zzf;"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzrm;->zzk(Ljava/util/Collection;)Lcom/google/ads/interactivemedia/v3/internal/zzrm;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    :goto_0
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/zzl;->mimeTypes:Lcom/google/ads/interactivemedia/v3/internal/zzrm;

    .line 10
    .line 11
    return-object p0
.end method

.method public setPlayAdsAfterTime(D)Lcom/google/ads/interactivemedia/v3/impl/data/zzf;
    .locals 0

    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/zzl;->playAdsAfterTime:D

    iget-byte p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/zzl;->set$0:B

    or-int/lit8 p1, p1, 0x8

    int-to-byte p1, p1

    iput-byte p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/zzl;->set$0:B

    return-object p0
.end method

.method public setUiElements(Ljava/util/Set;)Lcom/google/ads/interactivemedia/v3/impl/data/zzf;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/google/ads/interactivemedia/v3/api/UiElement;",
            ">;)",
            "Lcom/google/ads/interactivemedia/v3/impl/data/zzf;"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzrr;->zzl(Ljava/util/Collection;)Lcom/google/ads/interactivemedia/v3/internal/zzrr;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    :goto_0
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/zzl;->uiElements:Lcom/google/ads/interactivemedia/v3/internal/zzrr;

    .line 10
    .line 11
    return-object p0
.end method
