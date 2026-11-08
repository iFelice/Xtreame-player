.class abstract Lcom/google/ads/interactivemedia/v3/impl/zzak;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/api/BaseManager;
.implements Lcom/google/ads/interactivemedia/v3/internal/zzem;


# instance fields
.field private final zza:Lcom/google/ads/interactivemedia/v3/impl/zzba;

.field private final zzb:Ljava/lang/String;

.field private final zzc:Ljava/util/List;

.field private final zzd:Lcom/google/ads/interactivemedia/v3/impl/zzat;

.field private final zze:Landroid/content/Context;

.field private final zzf:Lcom/google/ads/interactivemedia/v3/impl/zzb;

.field private final zzg:Lcom/google/ads/interactivemedia/v3/impl/zzbt;

.field private final zzh:Lcom/google/ads/interactivemedia/v3/impl/zzcc;

.field private final zzi:Lcom/google/ads/interactivemedia/v3/impl/zzam;

.field private zzj:Lcom/google/ads/interactivemedia/v3/impl/data/zzc;

.field private zzk:Lcom/google/ads/interactivemedia/v3/api/zza;

.field private zzl:Lcom/google/ads/interactivemedia/v3/api/AdProgressInfo;

.field private zzm:Lcom/google/ads/interactivemedia/v3/api/AdsRenderingSettings;

.field private zzn:Z

.field private final zzo:Lcom/google/ads/interactivemedia/v3/internal/zzgi;

.field private zzp:Lcom/google/ads/interactivemedia/v3/internal/zzen;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/zzba;Lcom/google/ads/interactivemedia/v3/impl/zzcc;Lcom/google/ads/interactivemedia/v3/api/BaseDisplayContainer;Lcom/google/ads/interactivemedia/v3/impl/zzb;Lcom/google/ads/interactivemedia/v3/impl/zzbt;Lcom/google/ads/interactivemedia/v3/impl/zzat;Ljava/util/concurrent/ExecutorService;Landroid/content/Context;Z)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v9, p1

    .line 4
    .line 5
    move-object/from16 v10, p2

    .line 6
    .line 7
    move-object/from16 v11, p5

    .line 8
    .line 9
    move-object/from16 v12, p6

    .line 10
    .line 11
    move-object/from16 v13, p7

    .line 12
    .line 13
    move-object/from16 v14, p9

    .line 14
    .line 15
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    new-instance v15, Ljava/util/ArrayList;

    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    invoke-direct {v15, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 22
    .line 23
    .line 24
    iput-object v15, v0, Lcom/google/ads/interactivemedia/v3/impl/zzak;->zzc:Ljava/util/List;

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    iput-boolean v1, v0, Lcom/google/ads/interactivemedia/v3/impl/zzak;->zzn:Z

    .line 28
    .line 29
    iput-object v9, v0, Lcom/google/ads/interactivemedia/v3/impl/zzak;->zzb:Ljava/lang/String;

    .line 30
    .line 31
    iput-object v10, v0, Lcom/google/ads/interactivemedia/v3/impl/zzak;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzba;

    .line 32
    .line 33
    move-object/from16 v1, p3

    .line 34
    .line 35
    iput-object v1, v0, Lcom/google/ads/interactivemedia/v3/impl/zzak;->zzh:Lcom/google/ads/interactivemedia/v3/impl/zzcc;

    .line 36
    .line 37
    iput-object v14, v0, Lcom/google/ads/interactivemedia/v3/impl/zzak;->zze:Landroid/content/Context;

    .line 38
    .line 39
    iput-object v13, v0, Lcom/google/ads/interactivemedia/v3/impl/zzak;->zzd:Lcom/google/ads/interactivemedia/v3/impl/zzat;

    .line 40
    .line 41
    new-instance v1, Lcom/google/ads/interactivemedia/v3/impl/data/zzh;

    .line 42
    .line 43
    invoke-direct {v1}, Lcom/google/ads/interactivemedia/v3/impl/data/zzh;-><init>()V

    .line 44
    .line 45
    .line 46
    iput-object v1, v0, Lcom/google/ads/interactivemedia/v3/impl/zzak;->zzm:Lcom/google/ads/interactivemedia/v3/api/AdsRenderingSettings;

    .line 47
    .line 48
    new-instance v7, Lcom/google/ads/interactivemedia/v3/internal/zzgi;

    .line 49
    .line 50
    invoke-direct {v7, v14, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzgi;-><init>(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/api/AdsRenderingSettings;)V

    .line 51
    .line 52
    .line 53
    iput-object v7, v0, Lcom/google/ads/interactivemedia/v3/impl/zzak;->zzo:Lcom/google/ads/interactivemedia/v3/internal/zzgi;

    .line 54
    .line 55
    move-object/from16 v8, p4

    .line 56
    .line 57
    check-cast v8, Lcom/google/ads/interactivemedia/v3/impl/zzaf;

    .line 58
    .line 59
    new-instance v6, Lcom/google/ads/interactivemedia/v3/impl/zzam;

    .line 60
    .line 61
    move-object v1, v6

    .line 62
    move-object/from16 v2, p9

    .line 63
    .line 64
    move-object/from16 v3, p8

    .line 65
    .line 66
    move-object/from16 v4, p1

    .line 67
    .line 68
    move-object v5, v8

    .line 69
    move-object v14, v6

    .line 70
    move-object/from16 v6, p7

    .line 71
    .line 72
    move-object/from16 p3, v8

    .line 73
    .line 74
    move-object/from16 v8, p2

    .line 75
    .line 76
    invoke-direct/range {v1 .. v8}, Lcom/google/ads/interactivemedia/v3/impl/zzam;-><init>(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/zzaf;Lcom/google/ads/interactivemedia/v3/impl/zzat;Lcom/google/ads/interactivemedia/v3/internal/zzgi;Lcom/google/ads/interactivemedia/v3/impl/zzbi;)V

    .line 77
    .line 78
    .line 79
    iput-object v14, v0, Lcom/google/ads/interactivemedia/v3/impl/zzak;->zzi:Lcom/google/ads/interactivemedia/v3/impl/zzam;

    .line 80
    .line 81
    iput-object v11, v0, Lcom/google/ads/interactivemedia/v3/impl/zzak;->zzf:Lcom/google/ads/interactivemedia/v3/impl/zzb;

    .line 82
    .line 83
    move/from16 v1, p10

    .line 84
    .line 85
    invoke-virtual {v11, v1}, Lcom/google/ads/interactivemedia/v3/impl/zzb;->zzh(Z)V

    .line 86
    .line 87
    .line 88
    iput-object v12, v0, Lcom/google/ads/interactivemedia/v3/impl/zzak;->zzg:Lcom/google/ads/interactivemedia/v3/impl/zzbt;

    .line 89
    .line 90
    if-nez v12, :cond_0

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_0
    invoke-virtual {v12, v9}, Lcom/google/ads/interactivemedia/v3/impl/zzbt;->zze(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual/range {p3 .. p3}, Lcom/google/ads/interactivemedia/v3/impl/zzaf;->getAdContainer()Landroid/view/ViewGroup;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-virtual {v12, v1}, Lcom/google/ads/interactivemedia/v3/impl/zzbt;->zzb(Landroid/view/View;)V

    .line 101
    .line 102
    .line 103
    invoke-interface {v15, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    invoke-virtual {v13, v12}, Lcom/google/ads/interactivemedia/v3/impl/zzat;->zza(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual/range {p3 .. p3}, Lcom/google/ads/interactivemedia/v3/impl/zzaf;->zzb()Ljava/util/Set;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 118
    .line 119
    .line 120
    move-result v2

    .line 121
    if-eqz v2, :cond_1

    .line 122
    .line 123
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    check-cast v2, Lcom/google/ads/interactivemedia/v3/api/FriendlyObstruction;

    .line 128
    .line 129
    invoke-virtual {v12, v2}, Lcom/google/ads/interactivemedia/v3/impl/zzbt;->zza(Lcom/google/ads/interactivemedia/v3/api/FriendlyObstruction;)V

    .line 130
    .line 131
    .line 132
    goto :goto_0

    .line 133
    :cond_1
    move-object/from16 v2, p3

    .line 134
    .line 135
    invoke-virtual {v2, v12}, Lcom/google/ads/interactivemedia/v3/impl/zzaf;->zzc(Lcom/google/ads/interactivemedia/v3/impl/zzae;)V

    .line 136
    .line 137
    .line 138
    :goto_1
    sget-object v1, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;->adsManager:Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;

    .line 139
    .line 140
    new-instance v2, Lcom/google/ads/interactivemedia/v3/impl/zzah;

    .line 141
    .line 142
    invoke-direct {v2, v0}, Lcom/google/ads/interactivemedia/v3/impl/zzah;-><init>(Lcom/google/ads/interactivemedia/v3/impl/zzak;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v10, v9, v1, v2}, Lcom/google/ads/interactivemedia/v3/impl/zzba;->zzi(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;Lcom/google/ads/interactivemedia/v3/impl/zzbh;)V

    .line 146
    .line 147
    .line 148
    sget-object v1, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;->nativeUi:Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;

    .line 149
    .line 150
    new-instance v2, Lcom/google/ads/interactivemedia/v3/impl/zzaj;

    .line 151
    .line 152
    invoke-direct {v2, v0}, Lcom/google/ads/interactivemedia/v3/impl/zzaj;-><init>(Lcom/google/ads/interactivemedia/v3/impl/zzak;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v10, v9, v1, v2}, Lcom/google/ads/interactivemedia/v3/impl/zzba;->zzi(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;Lcom/google/ads/interactivemedia/v3/impl/zzbh;)V

    .line 156
    .line 157
    .line 158
    sget-object v1, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;->videoDisplay1:Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;

    .line 159
    .line 160
    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/impl/zzak;->zzh:Lcom/google/ads/interactivemedia/v3/impl/zzcc;

    .line 161
    .line 162
    invoke-virtual {v10, v9, v1, v2}, Lcom/google/ads/interactivemedia/v3/impl/zzba;->zzi(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;Lcom/google/ads/interactivemedia/v3/impl/zzbh;)V

    .line 163
    .line 164
    .line 165
    sget-object v1, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;->videoDisplay2:Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;

    .line 166
    .line 167
    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/impl/zzak;->zzh:Lcom/google/ads/interactivemedia/v3/impl/zzcc;

    .line 168
    .line 169
    invoke-virtual {v10, v9, v1, v2}, Lcom/google/ads/interactivemedia/v3/impl/zzba;->zzi(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;Lcom/google/ads/interactivemedia/v3/impl/zzbh;)V

    .line 170
    .line 171
    .line 172
    sget-object v1, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;->displayContainer:Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;

    .line 173
    .line 174
    new-instance v2, Lcom/google/ads/interactivemedia/v3/impl/zzai;

    .line 175
    .line 176
    invoke-direct {v2, v0}, Lcom/google/ads/interactivemedia/v3/impl/zzai;-><init>(Lcom/google/ads/interactivemedia/v3/impl/zzak;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v10, v9, v1, v2}, Lcom/google/ads/interactivemedia/v3/impl/zzba;->zzi(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;Lcom/google/ads/interactivemedia/v3/impl/zzbh;)V

    .line 180
    .line 181
    .line 182
    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/impl/zzak;->zzf:Lcom/google/ads/interactivemedia/v3/impl/zzb;

    .line 183
    .line 184
    invoke-virtual {v10, v1, v9}, Lcom/google/ads/interactivemedia/v3/impl/zzba;->zzh(Lcom/google/ads/interactivemedia/v3/impl/zzaz;Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    invoke-static/range {p9 .. p9}, Lcom/google/ads/interactivemedia/v3/internal/zzel;->zzb(Landroid/content/Context;)Landroid/app/Application;

    .line 188
    .line 189
    .line 190
    move-result-object v1

    .line 191
    if-eqz v1, :cond_2

    .line 192
    .line 193
    new-instance v2, Lcom/google/ads/interactivemedia/v3/internal/zzen;

    .line 194
    .line 195
    invoke-direct {v2, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzen;-><init>(Landroid/app/Application;)V

    .line 196
    .line 197
    .line 198
    iput-object v2, v0, Lcom/google/ads/interactivemedia/v3/impl/zzak;->zzp:Lcom/google/ads/interactivemedia/v3/internal/zzen;

    .line 199
    .line 200
    invoke-virtual {v2, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzen;->zza(Lcom/google/ads/interactivemedia/v3/internal/zzem;)V

    .line 201
    .line 202
    .line 203
    :cond_2
    return-void
.end method

.method private final zza(Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;Ljava/lang/String;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzak;->zzl:Lcom/google/ads/interactivemedia/v3/api/AdProgressInfo;

    .line 3
    .line 4
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/zzd;

    .line 5
    .line 6
    new-instance v1, Lcom/google/ads/interactivemedia/v3/api/AdError;

    .line 7
    .line 8
    invoke-direct {v1, p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/api/AdError;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/zzd;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError;)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzak;->zzd:Lcom/google/ads/interactivemedia/v3/impl/zzat;

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/impl/zzat;->zzc(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public static bridge synthetic zzd(Lcom/google/ads/interactivemedia/v3/impl/zzak;)Lcom/google/ads/interactivemedia/v3/impl/zzam;
    .locals 0

    iget-object p0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzak;->zzi:Lcom/google/ads/interactivemedia/v3/impl/zzam;

    return-object p0
.end method

.method public static bridge synthetic zze(Lcom/google/ads/interactivemedia/v3/impl/zzak;)Lcom/google/ads/interactivemedia/v3/impl/zzba;
    .locals 0

    iget-object p0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzak;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzba;

    return-object p0
.end method

.method public static bridge synthetic zzf(Lcom/google/ads/interactivemedia/v3/impl/zzak;)Lcom/google/ads/interactivemedia/v3/impl/zzcc;
    .locals 0

    iget-object p0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzak;->zzh:Lcom/google/ads/interactivemedia/v3/impl/zzcc;

    return-object p0
.end method

.method public static bridge synthetic zzh(Lcom/google/ads/interactivemedia/v3/impl/zzak;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzak;->zzb:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic zzi(Lcom/google/ads/interactivemedia/v3/impl/zzak;Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p2}, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->getErrorCodeByNumber(I)Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/impl/zzak;->zza(Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static bridge synthetic zzj(Lcom/google/ads/interactivemedia/v3/impl/zzak;Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;Ljava/lang/String;)V
    .locals 0

    const-string p3, "Ad loaded message did not contain adData."

    invoke-direct {p0, p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/impl/zzak;->zza(Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;Ljava/lang/String;)V

    return-void
.end method

.method private final zzt(Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzak;->zze:Landroid/content/Context;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzak;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzba;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/google/ads/interactivemedia/v3/impl/zzba;->zza:Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;

    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzel;->zzd(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzak;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzba;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/impl/zzba;->zzb()Landroid/webkit/WebView;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzak;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzba;

    .line 23
    .line 24
    new-instance v1, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;

    .line 25
    .line 26
    sget-object v2, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;->userInteraction:Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;

    .line 27
    .line 28
    sget-object v3, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;->focusUiElement:Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;

    .line 29
    .line 30
    const/4 v4, 0x0

    .line 31
    invoke-direct {v1, v2, v3, p1, v4}, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;-><init>(Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;Ljava/lang/String;Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/zzba;->zzn(Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    return-void
.end method

.method private final zzu()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzak;->zzm:Lcom/google/ads/interactivemedia/v3/api/AdsRenderingSettings;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/AdsRenderingSettings;->getFocusSkipButtonWhenAvailable()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method


# virtual methods
.method public final addAdErrorListener(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzak;->zzd:Lcom/google/ads/interactivemedia/v3/impl/zzat;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/impl/zzat;->zza(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final addAdEventListener(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzak;->zzc:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public destroy()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzak;->zzn:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzak;->zzg:Lcom/google/ads/interactivemedia/v3/impl/zzbt;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/impl/zzbt;->zzg()Z

    .line 9
    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzak;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzba;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzak;->zzb:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/zzba;->zzl(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzak;->zzf:Lcom/google/ads/interactivemedia/v3/impl/zzb;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/impl/zzb;->zzi()V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzak;->zzp:Lcom/google/ads/interactivemedia/v3/internal/zzen;

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzen;->zzb()V

    .line 28
    .line 29
    .line 30
    :cond_1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzak;->zzh:Lcom/google/ads/interactivemedia/v3/impl/zzcc;

    .line 31
    .line 32
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/impl/zzcc;->zzc()V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final focus()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzak;->zzb:Ljava/lang/String;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/impl/zzak;->zzt(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final getAdProgress()Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzak;->zzn:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;->VIDEO_TIME_NOT_READY:Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzak;->zzh:Lcom/google/ads/interactivemedia/v3/impl/zzcc;

    .line 9
    .line 10
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/player/AdProgressProvider;->getAdProgress()Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    :goto_0
    return-object v0
.end method

.method public final getAdProgressInfo()Lcom/google/ads/interactivemedia/v3/api/AdProgressInfo;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzak;->zzl:Lcom/google/ads/interactivemedia/v3/api/AdProgressInfo;

    return-object v0
.end method

.method public final getCurrentAd()Lcom/google/ads/interactivemedia/v3/api/Ad;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzak;->zzj:Lcom/google/ads/interactivemedia/v3/impl/data/zzc;

    return-object v0
.end method

.method public final init()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzak;->zzm:Lcom/google/ads/interactivemedia/v3/api/AdsRenderingSettings;

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/impl/zzak;->zzb(Lcom/google/ads/interactivemedia/v3/api/AdsRenderingSettings;)Ljava/util/Map;

    move-result-object v0

    new-instance v1, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;

    .line 2
    sget-object v2, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;->adsManager:Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;

    sget-object v3, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;->init:Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/impl/zzak;->zzb:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;-><init>(Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzak;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzba;

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/zzba;->zzn(Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzak;->zzh:Lcom/google/ads/interactivemedia/v3/impl/zzcc;

    .line 3
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/impl/zzcc;->zzd()V

    return-void
.end method

.method public final init(Lcom/google/ads/interactivemedia/v3/api/AdsRenderingSettings;)V
    .locals 5

    if-eqz p1, :cond_0

    .line 4
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzak;->zzm:Lcom/google/ads/interactivemedia/v3/api/AdsRenderingSettings;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzak;->zzo:Lcom/google/ads/interactivemedia/v3/internal/zzgi;

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzgi;->zza(Lcom/google/ads/interactivemedia/v3/api/AdsRenderingSettings;)V

    :cond_0
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzak;->zzm:Lcom/google/ads/interactivemedia/v3/api/AdsRenderingSettings;

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/ads/interactivemedia/v3/impl/zzak;->zzb(Lcom/google/ads/interactivemedia/v3/api/AdsRenderingSettings;)Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzak;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzba;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzak;->zzb:Ljava/lang/String;

    new-instance v2, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;

    .line 6
    sget-object v3, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;->adsManager:Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;

    sget-object v4, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;->init:Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;

    invoke-direct {v2, v3, v4, v1, p1}, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;-><init>(Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Lcom/google/ads/interactivemedia/v3/impl/zzba;->zzn(Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;)V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzak;->zzh:Lcom/google/ads/interactivemedia/v3/impl/zzcc;

    .line 7
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/impl/zzcc;->zzd()V

    return-void
.end method

.method public final removeAdErrorListener(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzak;->zzd:Lcom/google/ads/interactivemedia/v3/impl/zzat;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/impl/zzat;->zzd(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final removeAdEventListener(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzak;->zzc:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public zzb(Lcom/google/ads/interactivemedia/v3/api/AdsRenderingSettings;)Ljava/util/Map;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/zzg;->builder(Lcom/google/ads/interactivemedia/v3/api/AdsRenderingSettings;)Lcom/google/ads/interactivemedia/v3/impl/data/zzf;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/zzf;->build()Lcom/google/ads/interactivemedia/v3/impl/data/zzg;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const-string v1, "adsRenderingSettings"

    .line 15
    .line 16
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    return-object v0
.end method

.method public zzc(Lcom/google/ads/interactivemedia/v3/impl/zzag;)V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    sget-object v0, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->ALL_ADS_COMPLETED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    .line 6
    .line 7
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;->activate:Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;

    .line 8
    .line 9
    iget-object v3, v2, Lcom/google/ads/interactivemedia/v3/impl/zzag;->zza:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    .line 10
    .line 11
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iget-object v4, v2, Lcom/google/ads/interactivemedia/v3/impl/zzag;->zzb:Lcom/google/ads/interactivemedia/v3/impl/data/zzc;

    .line 16
    .line 17
    const/4 v5, 0x3

    .line 18
    const/4 v6, 0x0

    .line 19
    if-eq v0, v5, :cond_c

    .line 20
    .line 21
    const/16 v7, 0x11

    .line 22
    .line 23
    if-eq v0, v7, :cond_5

    .line 24
    .line 25
    const/16 v5, 0x18

    .line 26
    .line 27
    if-eq v0, v5, :cond_c

    .line 28
    .line 29
    const/4 v5, 0x5

    .line 30
    if-eq v0, v5, :cond_4

    .line 31
    .line 32
    const/4 v5, 0x6

    .line 33
    if-eq v0, v5, :cond_3

    .line 34
    .line 35
    const/16 v5, 0x14

    .line 36
    .line 37
    if-eq v0, v5, :cond_2

    .line 38
    .line 39
    const/16 v5, 0x15

    .line 40
    .line 41
    if-eq v0, v5, :cond_1

    .line 42
    .line 43
    packed-switch v0, :pswitch_data_0

    .line 44
    .line 45
    .line 46
    goto/16 :goto_2

    .line 47
    .line 48
    :pswitch_0
    if-eqz v4, :cond_0

    .line 49
    .line 50
    invoke-virtual {v1, v4}, Lcom/google/ads/interactivemedia/v3/impl/zzak;->zzs(Lcom/google/ads/interactivemedia/v3/impl/data/zzc;)V

    .line 51
    .line 52
    .line 53
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/impl/zzak;->zzu()Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_d

    .line 58
    .line 59
    iget-object v0, v1, Lcom/google/ads/interactivemedia/v3/impl/zzak;->zzb:Ljava/lang/String;

    .line 60
    .line 61
    invoke-direct {v1, v0}, Lcom/google/ads/interactivemedia/v3/impl/zzak;->zzt(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    goto/16 :goto_2

    .line 65
    .line 66
    :pswitch_1
    invoke-direct/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/impl/zzak;->zzu()Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-eqz v0, :cond_d

    .line 71
    .line 72
    iget-object v0, v1, Lcom/google/ads/interactivemedia/v3/impl/zzak;->zzb:Ljava/lang/String;

    .line 73
    .line 74
    invoke-direct {v1, v0}, Lcom/google/ads/interactivemedia/v3/impl/zzak;->zzt(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    goto/16 :goto_2

    .line 78
    .line 79
    :cond_1
    iget-object v0, v2, Lcom/google/ads/interactivemedia/v3/impl/zzag;->zze:Lcom/google/ads/interactivemedia/v3/api/AdProgressInfo;

    .line 80
    .line 81
    iput-object v0, v1, Lcom/google/ads/interactivemedia/v3/impl/zzak;->zzl:Lcom/google/ads/interactivemedia/v3/api/AdProgressInfo;

    .line 82
    .line 83
    goto/16 :goto_2

    .line 84
    .line 85
    :cond_2
    invoke-virtual {v1, v4}, Lcom/google/ads/interactivemedia/v3/impl/zzak;->zzs(Lcom/google/ads/interactivemedia/v3/impl/data/zzc;)V

    .line 86
    .line 87
    .line 88
    goto/16 :goto_2

    .line 89
    .line 90
    :cond_3
    iget-object v0, v1, Lcom/google/ads/interactivemedia/v3/impl/zzak;->zzf:Lcom/google/ads/interactivemedia/v3/impl/zzb;

    .line 91
    .line 92
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/impl/zzb;->zzi()V

    .line 93
    .line 94
    .line 95
    goto/16 :goto_2

    .line 96
    .line 97
    :cond_4
    iget-object v0, v1, Lcom/google/ads/interactivemedia/v3/impl/zzak;->zzf:Lcom/google/ads/interactivemedia/v3/impl/zzb;

    .line 98
    .line 99
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/impl/zzb;->zzg()V

    .line 100
    .line 101
    .line 102
    goto/16 :goto_2

    .line 103
    .line 104
    :cond_5
    iget-object v0, v2, Lcom/google/ads/interactivemedia/v3/impl/zzag;->zzf:Ljava/util/List;

    .line 105
    .line 106
    if-eqz v0, :cond_b

    .line 107
    .line 108
    iget-object v0, v1, Lcom/google/ads/interactivemedia/v3/impl/zzak;->zze:Landroid/content/Context;

    .line 109
    .line 110
    invoke-static {v0, v6}, Lcom/google/ads/interactivemedia/v3/internal/zzel;->zzc(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;)Z

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    if-eqz v0, :cond_b

    .line 115
    .line 116
    iget-object v0, v2, Lcom/google/ads/interactivemedia/v3/impl/zzag;->zzf:Ljava/util/List;

    .line 117
    .line 118
    :try_start_0
    new-instance v4, LF/i;

    .line 119
    .line 120
    iget-object v7, v1, Lcom/google/ads/interactivemedia/v3/impl/zzak;->zze:Landroid/content/Context;

    .line 121
    .line 122
    invoke-direct {v4, v7}, LF/i;-><init>(Landroid/content/Context;)V

    .line 123
    .line 124
    .line 125
    new-instance v7, Ljava/util/ArrayList;

    .line 126
    .line 127
    const/4 v8, 0x1

    .line 128
    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 129
    .line 130
    .line 131
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 136
    .line 137
    .line 138
    move-result v9

    .line 139
    if-eqz v9, :cond_9

    .line 140
    .line 141
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v9

    .line 145
    check-cast v9, Lcom/google/ads/interactivemedia/v3/impl/data/zzbk;

    .line 146
    .line 147
    int-to-byte v10, v8

    .line 148
    or-int/lit8 v10, v10, 0x2

    .line 149
    .line 150
    int-to-byte v10, v10

    .line 151
    invoke-virtual {v9}, Lcom/google/ads/interactivemedia/v3/impl/data/zzbk;->width()I

    .line 152
    .line 153
    .line 154
    move-result v12

    .line 155
    or-int/2addr v10, v8

    .line 156
    int-to-byte v10, v10

    .line 157
    invoke-virtual {v9}, Lcom/google/ads/interactivemedia/v3/impl/data/zzbk;->height()I

    .line 158
    .line 159
    .line 160
    move-result v13

    .line 161
    or-int/lit8 v10, v10, 0x2

    .line 162
    .line 163
    int-to-byte v10, v10

    .line 164
    invoke-virtual {v9}, Lcom/google/ads/interactivemedia/v3/impl/data/zzbk;->alternateText()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v14

    .line 168
    invoke-virtual {v9}, Lcom/google/ads/interactivemedia/v3/impl/data/zzbk;->imageUrl()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v16

    .line 172
    invoke-virtual {v9}, Lcom/google/ads/interactivemedia/v3/impl/data/zzbk;->creativeType()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v15

    .line 176
    if-eq v10, v5, :cond_8

    .line 177
    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    .line 179
    .line 180
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 181
    .line 182
    .line 183
    and-int/lit8 v4, v10, 0x1

    .line 184
    .line 185
    if-nez v4, :cond_6

    .line 186
    .line 187
    const-string v4, " width"

    .line 188
    .line 189
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    :cond_6
    and-int/lit8 v4, v10, 0x2

    .line 193
    .line 194
    if-nez v4, :cond_7

    .line 195
    .line 196
    const-string v4, " height"

    .line 197
    .line 198
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    :cond_7
    new-instance v4, Ljava/lang/IllegalStateException;

    .line 202
    .line 203
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    const-string v5, "Missing required properties:"

    .line 208
    .line 209
    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    invoke-direct {v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    throw v4

    .line 217
    :cond_8
    new-instance v9, Lt4/c;

    .line 218
    .line 219
    move-object v11, v9

    .line 220
    invoke-direct/range {v11 .. v16}, Lt4/a;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    .line 225
    .line 226
    goto :goto_0

    .line 227
    :catch_0
    move-exception v0

    .line 228
    goto :goto_1

    .line 229
    :cond_9
    invoke-static {v7}, Lt4/b;->a(Ljava/util/ArrayList;)LI2/c;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    iget-object v0, v0, LI2/c;->G:Ljava/util/List;

    .line 234
    .line 235
    if-eqz v0, :cond_a

    .line 236
    .line 237
    new-instance v5, Lt4/d;

    .line 238
    .line 239
    invoke-direct {v5, v0}, Lt4/b;-><init>(Ljava/util/List;)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {v4, v5}, LF/i;->o(Lt4/d;)V

    .line 243
    .line 244
    .line 245
    goto :goto_2

    .line 246
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 247
    .line 248
    const-string v4, "Missing required properties: iconClickFallbackImageList"

    .line 249
    .line 250
    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    throw v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    :goto_1
    const-string v4, "Failed to handle icon fallback image click."

    .line 255
    .line 256
    invoke-static {v4, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzfk;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 257
    .line 258
    .line 259
    goto :goto_2

    .line 260
    :cond_b
    const-string v0, "Received ICON_TAPPED event without icon click fallback image list."

    .line 261
    .line 262
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzfk;->zzd(Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    goto :goto_2

    .line 266
    :cond_c
    :pswitch_2
    iput-object v6, v1, Lcom/google/ads/interactivemedia/v3/impl/zzak;->zzl:Lcom/google/ads/interactivemedia/v3/api/AdProgressInfo;

    .line 267
    .line 268
    :cond_d
    :goto_2
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/zze;

    .line 269
    .line 270
    iget-object v4, v1, Lcom/google/ads/interactivemedia/v3/impl/zzak;->zzj:Lcom/google/ads/interactivemedia/v3/impl/data/zzc;

    .line 271
    .line 272
    iget-object v5, v2, Lcom/google/ads/interactivemedia/v3/impl/zzag;->zzc:Ljava/util/Map;

    .line 273
    .line 274
    iget-object v2, v2, Lcom/google/ads/interactivemedia/v3/impl/zzag;->zze:Lcom/google/ads/interactivemedia/v3/api/AdProgressInfo;

    .line 275
    .line 276
    invoke-direct {v0, v3, v4, v5, v2}, Lcom/google/ads/interactivemedia/v3/impl/zze;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;Lcom/google/ads/interactivemedia/v3/api/Ad;Ljava/util/Map;Lcom/google/ads/interactivemedia/v3/api/AdProgressInfo;)V

    .line 277
    .line 278
    .line 279
    iget-object v2, v1, Lcom/google/ads/interactivemedia/v3/impl/zzak;->zzc:Ljava/util/List;

    .line 280
    .line 281
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 282
    .line 283
    .line 284
    move-result-object v2

    .line 285
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 286
    .line 287
    .line 288
    move-result v4

    .line 289
    if-eqz v4, :cond_e

    .line 290
    .line 291
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 292
    .line 293
    .line 294
    move-result-object v4

    .line 295
    check-cast v4, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventListener;

    .line 296
    .line 297
    invoke-interface {v4, v0}, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventListener;->onAdEvent(Lcom/google/ads/interactivemedia/v3/api/AdEvent;)V

    .line 298
    .line 299
    .line 300
    goto :goto_3

    .line 301
    :cond_e
    sget-object v0, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->COMPLETED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    .line 302
    .line 303
    if-eq v3, v0, :cond_10

    .line 304
    .line 305
    sget-object v0, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->SKIPPED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    .line 306
    .line 307
    if-ne v3, v0, :cond_f

    .line 308
    .line 309
    goto :goto_4

    .line 310
    :cond_f
    return-void

    .line 311
    :cond_10
    :goto_4
    invoke-virtual {v1, v6}, Lcom/google/ads/interactivemedia/v3/impl/zzak;->zzs(Lcom/google/ads/interactivemedia/v3/impl/data/zzc;)V

    .line 312
    .line 313
    .line 314
    return-void

    .line 315
    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public final zzg()Lcom/google/ads/interactivemedia/v3/impl/zzcc;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzak;->zzh:Lcom/google/ads/interactivemedia/v3/impl/zzcc;

    return-object v0
.end method

.method public final zzk()V
    .locals 5

    .line 1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;

    .line 2
    .line 3
    sget-object v1, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;->adsManager:Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;

    .line 4
    .line 5
    sget-object v2, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;->appBackgrounding:Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/impl/zzak;->zzb:Ljava/lang/String;

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;-><init>(Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;Ljava/lang/String;Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzak;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzba;

    .line 14
    .line 15
    invoke-virtual {v1, v0}, Lcom/google/ads/interactivemedia/v3/impl/zzba;->zzn(Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final zzl()V
    .locals 5

    .line 1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;

    .line 2
    .line 3
    sget-object v1, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;->adsManager:Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;

    .line 4
    .line 5
    sget-object v2, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;->appForegrounding:Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/impl/zzak;->zzb:Ljava/lang/String;

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;-><init>(Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;Ljava/lang/String;Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzak;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzba;

    .line 14
    .line 15
    invoke-virtual {v1, v0}, Lcom/google/ads/interactivemedia/v3/impl/zzba;->zzn(Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final zzm()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/zzag;

    .line 2
    .line 3
    sget-object v1, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->ICON_FALLBACK_IMAGE_CLOSED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/zzak;->zzj:Lcom/google/ads/interactivemedia/v3/impl/data/zzc;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/impl/zzag;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;Lcom/google/ads/interactivemedia/v3/impl/data/zzc;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/impl/zzak;->zzc(Lcom/google/ads/interactivemedia/v3/impl/zzag;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final zzn(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzak;->zzo:Lcom/google/ads/interactivemedia/v3/internal/zzgi;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzgi;->zzb(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;->navigationRequestedFailed:Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;

    .line 10
    .line 11
    const-string v1, "url"

    .line 12
    .line 13
    invoke-static {v1, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzrp;->zze(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/internal/zzrp;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    sget-object v1, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;->adsManager:Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;

    .line 18
    .line 19
    invoke-virtual {p0, v1, v0, p1}, Lcom/google/ads/interactivemedia/v3/impl/zzak;->zzq(Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public final zzo(Lcom/google/ads/interactivemedia/v3/api/zza;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzak;->zzk:Lcom/google/ads/interactivemedia/v3/api/zza;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzak;->zzj:Lcom/google/ads/interactivemedia/v3/impl/data/zzc;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/impl/data/zzc;->setAdUi(Lcom/google/ads/interactivemedia/v3/api/zza;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final zzp()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzak;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzba;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzak;->zzb:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/zzba;->zzm(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzak;->zzc:Ljava/util/List;

    .line 9
    .line 10
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzak;->zzd:Lcom/google/ads/interactivemedia/v3/impl/zzat;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/impl/zzat;->zzb()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final zzq(Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzak;->zzb:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;

    .line 4
    .line 5
    invoke-direct {v1, p1, p2, v0, p3}, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;-><init>(Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;Ljava/lang/String;Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzak;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzba;

    .line 9
    .line 10
    invoke-virtual {p1, v1}, Lcom/google/ads/interactivemedia/v3/impl/zzba;->zzn(Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final zzr(Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzak;->zzb:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;

    .line 4
    .line 5
    sget-object v2, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;->adsManager:Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-direct {v1, v2, p1, v0, v3}, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;-><init>(Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;Ljava/lang/String;Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzak;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzba;

    .line 12
    .line 13
    invoke-virtual {p1, v1}, Lcom/google/ads/interactivemedia/v3/impl/zzba;->zzn(Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final zzs(Lcom/google/ads/interactivemedia/v3/impl/data/zzc;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzak;->zzj:Lcom/google/ads/interactivemedia/v3/impl/data/zzc;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzak;->zzk:Lcom/google/ads/interactivemedia/v3/api/zza;

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/impl/data/zzc;->setAdUi(Lcom/google/ads/interactivemedia/v3/api/zza;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method
