.class final Lcom/google/ads/interactivemedia/v3/impl/data/zzas;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration$Builder;


# instance fields
.field private disableExperiments:Z

.field private disableOnScreenDetection:Z

.field private disableSkipFadeTransition:Z

.field private enableMonitorAppLifecycle:Z

.field private extraParams:Lcom/google/ads/interactivemedia/v3/internal/zzrp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/interactivemedia/v3/internal/zzrp<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private forceAndroidTvMode:Z

.field private forceExperimentIds:Lcom/google/ads/interactivemedia/v3/internal/zzrm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/interactivemedia/v3/internal/zzrm<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private forceTvMode:Z

.field private ignoreStrictModeFalsePositives:Z

.field private set$0:S

.field private useTestStreamManager:Z

.field private useVideoElementMock:Z

.field private videoElementMockDuration:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-short v1, v0, Lcom/google/ads/interactivemedia/v3/impl/data/zzas;->set$0:S

    .line 4
    .line 5
    const/16 v2, 0x3ff

    .line 6
    .line 7
    if-eq v1, v2, :cond_a

    .line 8
    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    iget-short v2, v0, Lcom/google/ads/interactivemedia/v3/impl/data/zzas;->set$0:S

    .line 15
    .line 16
    and-int/lit8 v2, v2, 0x1

    .line 17
    .line 18
    if-nez v2, :cond_0

    .line 19
    .line 20
    const-string v2, " disableExperiments"

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    :cond_0
    iget-short v2, v0, Lcom/google/ads/interactivemedia/v3/impl/data/zzas;->set$0:S

    .line 26
    .line 27
    and-int/lit8 v2, v2, 0x2

    .line 28
    .line 29
    if-nez v2, :cond_1

    .line 30
    .line 31
    const-string v2, " disableOnScreenDetection"

    .line 32
    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    :cond_1
    iget-short v2, v0, Lcom/google/ads/interactivemedia/v3/impl/data/zzas;->set$0:S

    .line 37
    .line 38
    and-int/lit8 v2, v2, 0x4

    .line 39
    .line 40
    if-nez v2, :cond_2

    .line 41
    .line 42
    const-string v2, " disableSkipFadeTransition"

    .line 43
    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    :cond_2
    iget-short v2, v0, Lcom/google/ads/interactivemedia/v3/impl/data/zzas;->set$0:S

    .line 48
    .line 49
    and-int/lit8 v2, v2, 0x8

    .line 50
    .line 51
    if-nez v2, :cond_3

    .line 52
    .line 53
    const-string v2, " useVideoElementMock"

    .line 54
    .line 55
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    :cond_3
    iget-short v2, v0, Lcom/google/ads/interactivemedia/v3/impl/data/zzas;->set$0:S

    .line 59
    .line 60
    and-int/lit8 v2, v2, 0x10

    .line 61
    .line 62
    if-nez v2, :cond_4

    .line 63
    .line 64
    const-string v2, " videoElementMockDuration"

    .line 65
    .line 66
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    :cond_4
    iget-short v2, v0, Lcom/google/ads/interactivemedia/v3/impl/data/zzas;->set$0:S

    .line 70
    .line 71
    and-int/lit8 v2, v2, 0x20

    .line 72
    .line 73
    if-nez v2, :cond_5

    .line 74
    .line 75
    const-string v2, " useTestStreamManager"

    .line 76
    .line 77
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    :cond_5
    iget-short v2, v0, Lcom/google/ads/interactivemedia/v3/impl/data/zzas;->set$0:S

    .line 81
    .line 82
    and-int/lit8 v2, v2, 0x40

    .line 83
    .line 84
    if-nez v2, :cond_6

    .line 85
    .line 86
    const-string v2, " enableMonitorAppLifecycle"

    .line 87
    .line 88
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    :cond_6
    iget-short v2, v0, Lcom/google/ads/interactivemedia/v3/impl/data/zzas;->set$0:S

    .line 92
    .line 93
    and-int/lit16 v2, v2, 0x80

    .line 94
    .line 95
    if-nez v2, :cond_7

    .line 96
    .line 97
    const-string v2, " forceTvMode"

    .line 98
    .line 99
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    :cond_7
    iget-short v2, v0, Lcom/google/ads/interactivemedia/v3/impl/data/zzas;->set$0:S

    .line 103
    .line 104
    and-int/lit16 v2, v2, 0x100

    .line 105
    .line 106
    if-nez v2, :cond_8

    .line 107
    .line 108
    const-string v2, " forceAndroidTvMode"

    .line 109
    .line 110
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    :cond_8
    iget-short v2, v0, Lcom/google/ads/interactivemedia/v3/impl/data/zzas;->set$0:S

    .line 114
    .line 115
    and-int/lit16 v2, v2, 0x200

    .line 116
    .line 117
    if-nez v2, :cond_9

    .line 118
    .line 119
    const-string v2, " ignoreStrictModeFalsePositives"

    .line 120
    .line 121
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    :cond_9
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 125
    .line 126
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    const-string v3, "Missing required properties:"

    .line 131
    .line 132
    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    throw v2

    .line 140
    :cond_a
    new-instance v1, Lcom/google/ads/interactivemedia/v3/impl/data/zzau;

    .line 141
    .line 142
    iget-boolean v4, v0, Lcom/google/ads/interactivemedia/v3/impl/data/zzas;->disableExperiments:Z

    .line 143
    .line 144
    iget-boolean v5, v0, Lcom/google/ads/interactivemedia/v3/impl/data/zzas;->disableOnScreenDetection:Z

    .line 145
    .line 146
    iget-boolean v6, v0, Lcom/google/ads/interactivemedia/v3/impl/data/zzas;->disableSkipFadeTransition:Z

    .line 147
    .line 148
    iget-object v7, v0, Lcom/google/ads/interactivemedia/v3/impl/data/zzas;->forceExperimentIds:Lcom/google/ads/interactivemedia/v3/internal/zzrm;

    .line 149
    .line 150
    iget-boolean v8, v0, Lcom/google/ads/interactivemedia/v3/impl/data/zzas;->useVideoElementMock:Z

    .line 151
    .line 152
    iget v9, v0, Lcom/google/ads/interactivemedia/v3/impl/data/zzas;->videoElementMockDuration:F

    .line 153
    .line 154
    iget-boolean v10, v0, Lcom/google/ads/interactivemedia/v3/impl/data/zzas;->useTestStreamManager:Z

    .line 155
    .line 156
    iget-boolean v11, v0, Lcom/google/ads/interactivemedia/v3/impl/data/zzas;->enableMonitorAppLifecycle:Z

    .line 157
    .line 158
    iget-boolean v12, v0, Lcom/google/ads/interactivemedia/v3/impl/data/zzas;->forceTvMode:Z

    .line 159
    .line 160
    iget-boolean v13, v0, Lcom/google/ads/interactivemedia/v3/impl/data/zzas;->forceAndroidTvMode:Z

    .line 161
    .line 162
    iget-boolean v14, v0, Lcom/google/ads/interactivemedia/v3/impl/data/zzas;->ignoreStrictModeFalsePositives:Z

    .line 163
    .line 164
    iget-object v15, v0, Lcom/google/ads/interactivemedia/v3/impl/data/zzas;->extraParams:Lcom/google/ads/interactivemedia/v3/internal/zzrp;

    .line 165
    .line 166
    const/16 v16, 0x0

    .line 167
    .line 168
    move-object v3, v1

    .line 169
    invoke-direct/range {v3 .. v16}, Lcom/google/ads/interactivemedia/v3/impl/data/zzau;-><init>(ZZZLcom/google/ads/interactivemedia/v3/internal/zzrm;ZFZZZZZLcom/google/ads/interactivemedia/v3/internal/zzrp;Lcom/google/ads/interactivemedia/v3/impl/data/zzat;)V

    .line 170
    .line 171
    .line 172
    return-object v1
.end method

.method public disableExperiments(Z)Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/zzas;->disableExperiments:Z

    iget-short p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/zzas;->set$0:S

    or-int/lit8 p1, p1, 0x1

    int-to-short p1, p1

    iput-short p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/zzas;->set$0:S

    return-object p0
.end method

.method public disableOnScreenDetection(Z)Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/zzas;->disableOnScreenDetection:Z

    iget-short p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/zzas;->set$0:S

    or-int/lit8 p1, p1, 0x2

    int-to-short p1, p1

    iput-short p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/zzas;->set$0:S

    return-object p0
.end method

.method public disableSkipFadeTransition(Z)Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/zzas;->disableSkipFadeTransition:Z

    iget-short p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/zzas;->set$0:S

    or-int/lit8 p1, p1, 0x4

    int-to-short p1, p1

    iput-short p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/zzas;->set$0:S

    return-object p0
.end method

.method public enableMonitorAppLifecycle(Z)Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/zzas;->enableMonitorAppLifecycle:Z

    iget-short p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/zzas;->set$0:S

    or-int/lit8 p1, p1, 0x40

    int-to-short p1, p1

    iput-short p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/zzas;->set$0:S

    return-object p0
.end method

.method public extraParams(Lcom/google/ads/interactivemedia/v3/internal/zzrp;)Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/interactivemedia/v3/internal/zzrp<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration$Builder;"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/zzas;->extraParams:Lcom/google/ads/interactivemedia/v3/internal/zzrp;

    return-object p0
.end method

.method public forceAndroidTvMode(Z)Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/zzas;->forceAndroidTvMode:Z

    iget-short p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/zzas;->set$0:S

    or-int/lit16 p1, p1, 0x100

    int-to-short p1, p1

    iput-short p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/zzas;->set$0:S

    return-object p0
.end method

.method public forceExperimentIds(Lcom/google/ads/interactivemedia/v3/internal/zzrm;)Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/interactivemedia/v3/internal/zzrm<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration$Builder;"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/zzas;->forceExperimentIds:Lcom/google/ads/interactivemedia/v3/internal/zzrm;

    return-object p0
.end method

.method public forceTvMode(Z)Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/zzas;->forceTvMode:Z

    iget-short p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/zzas;->set$0:S

    or-int/lit16 p1, p1, 0x80

    int-to-short p1, p1

    iput-short p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/zzas;->set$0:S

    return-object p0
.end method

.method public ignoreStrictModeFalsePositives(Z)Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/zzas;->ignoreStrictModeFalsePositives:Z

    iget-short p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/zzas;->set$0:S

    or-int/lit16 p1, p1, 0x200

    int-to-short p1, p1

    iput-short p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/zzas;->set$0:S

    return-object p0
.end method

.method public useTestStreamManager(Z)Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/zzas;->useTestStreamManager:Z

    iget-short p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/zzas;->set$0:S

    or-int/lit8 p1, p1, 0x20

    int-to-short p1, p1

    iput-short p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/zzas;->set$0:S

    return-object p0
.end method

.method public useVideoElementMock(Z)Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/zzas;->useVideoElementMock:Z

    iget-short p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/zzas;->set$0:S

    or-int/lit8 p1, p1, 0x8

    int-to-short p1, p1

    iput-short p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/zzas;->set$0:S

    return-object p0
.end method

.method public videoElementMockDuration(F)Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration$Builder;
    .locals 0

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/zzas;->videoElementMockDuration:F

    iget-short p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/zzas;->set$0:S

    or-int/lit8 p1, p1, 0x10

    int-to-short p1, p1

    iput-short p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/zzas;->set$0:S

    return-object p0
.end method
