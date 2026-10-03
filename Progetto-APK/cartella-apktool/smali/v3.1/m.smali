.class public final Lv3/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/IJ;


# instance fields
.field public final synthetic a:I

.field public final b:Lv3/l;


# direct methods
.method public synthetic constructor <init>(Lv3/l;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lv3/m;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Lv3/m;->b:Lv3/l;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final zzb()Ljava/lang/Object;
    .locals 5

    .line 1
    iget v0, p0, Lv3/m;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lv3/m;->b:Lv3/l;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    new-instance v0, Ljava/util/HashSet;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 14
    .line 15
    .line 16
    iget-object v1, v1, Lv3/l;->a:Ljava/lang/String;

    .line 17
    .line 18
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    return-object v0

    .line 28
    :pswitch_0
    iget-object v0, v1, Lv3/l;->a:Ljava/lang/String;

    .line 29
    .line 30
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Cw;->N0(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    return-object v0

    .line 40
    :pswitch_1
    iget-object v0, v1, Lv3/l;->a:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    const/4 v2, 0x2

    .line 47
    const/4 v3, 0x1

    .line 48
    const/4 v4, 0x3

    .line 49
    sparse-switch v1, :sswitch_data_0

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :sswitch_0
    const-string v1, "BANNER"

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_0

    .line 60
    .line 61
    const/4 v0, 0x0

    .line 62
    goto :goto_1

    .line 63
    :sswitch_1
    const-string v1, "REWARDED"

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-eqz v0, :cond_0

    .line 70
    .line 71
    const/4 v0, 0x3

    .line 72
    goto :goto_1

    .line 73
    :sswitch_2
    const-string v1, "INTERSTITIAL"

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-eqz v0, :cond_0

    .line 80
    .line 81
    const/4 v0, 0x1

    .line 82
    goto :goto_1

    .line 83
    :sswitch_3
    const-string v1, "NATIVE"

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    if-eqz v0, :cond_0

    .line 90
    .line 91
    const/4 v0, 0x2

    .line 92
    goto :goto_1

    .line 93
    :cond_0
    :goto_0
    const/4 v0, -0x1

    .line 94
    :goto_1
    if-eqz v0, :cond_4

    .line 95
    .line 96
    if-eq v0, v3, :cond_3

    .line 97
    .line 98
    if-eq v0, v2, :cond_2

    .line 99
    .line 100
    if-eq v0, v4, :cond_1

    .line 101
    .line 102
    sget-object v0, Lcom/google/android/gms/internal/ads/z6;->H:Lcom/google/android/gms/internal/ads/z6;

    .line 103
    .line 104
    goto :goto_2

    .line 105
    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/ads/z6;->O:Lcom/google/android/gms/internal/ads/z6;

    .line 106
    .line 107
    goto :goto_2

    .line 108
    :cond_2
    sget-object v0, Lcom/google/android/gms/internal/ads/z6;->N:Lcom/google/android/gms/internal/ads/z6;

    .line 109
    .line 110
    goto :goto_2

    .line 111
    :cond_3
    sget-object v0, Lcom/google/android/gms/internal/ads/z6;->K:Lcom/google/android/gms/internal/ads/z6;

    .line 112
    .line 113
    goto :goto_2

    .line 114
    :cond_4
    sget-object v0, Lcom/google/android/gms/internal/ads/z6;->I:Lcom/google/android/gms/internal/ads/z6;

    .line 115
    .line 116
    :goto_2
    return-object v0

    .line 117
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    :sswitch_data_0
    .sparse-switch
        -0x772abbe9 -> :sswitch_3
        -0x51d5b0d4 -> :sswitch_2
        0x205e3c0e -> :sswitch_1
        0x7458732c -> :sswitch_0
    .end sparse-switch
.end method
