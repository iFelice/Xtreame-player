.class public final synthetic Lcom/google/android/gms/internal/ads/gz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/google/android/gms/internal/ads/gz;->a:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/gz;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/gz;->a:I

    .line 2
    .line 3
    const-string v1, "sessionToken"

    .line 4
    .line 5
    const-string v2, "appId"

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast p1, Ljava/lang/String;

    .line 11
    .line 12
    new-instance v0, Landroid/os/Bundle;

    .line 13
    .line 14
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v1, "mediaUrl"

    .line 18
    .line 19
    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/gz;->b:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast p1, Lcom/google/android/gms/internal/ads/Ua;

    .line 25
    .line 26
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/Ua;->G:Lcom/google/android/gms/internal/ads/te;

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/te;->b(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :pswitch_0
    check-cast p1, Ljava/lang/String;

    .line 33
    .line 34
    sget-object v0, Lcom/google/android/gms/internal/ads/jz;->c:Lcom/google/android/gms/internal/ads/J;

    .line 35
    .line 36
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gz;->b:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v0, Landroid/os/Bundle;

    .line 39
    .line 40
    const-string v1, "adFieldEnifd"

    .line 41
    .line 42
    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :pswitch_1
    check-cast p1, Ljava/lang/String;

    .line 47
    .line 48
    sget-object v0, Lcom/google/android/gms/internal/ads/jz;->c:Lcom/google/android/gms/internal/ads/J;

    .line 49
    .line 50
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gz;->b:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v0, Landroid/os/Bundle;

    .line 53
    .line 54
    invoke-virtual {v0, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :pswitch_2
    check-cast p1, Ljava/lang/String;

    .line 59
    .line 60
    sget-object v0, Lcom/google/android/gms/internal/ads/jz;->c:Lcom/google/android/gms/internal/ads/J;

    .line 61
    .line 62
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gz;->b:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast v0, Landroid/os/Bundle;

    .line 65
    .line 66
    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :pswitch_3
    check-cast p1, Ljava/lang/String;

    .line 71
    .line 72
    sget-object v0, Lcom/google/android/gms/internal/ads/jz;->c:Lcom/google/android/gms/internal/ads/J;

    .line 73
    .line 74
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gz;->b:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast v0, Landroid/os/Bundle;

    .line 77
    .line 78
    invoke-virtual {v0, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    return-void

    .line 82
    :pswitch_4
    check-cast p1, Ljava/lang/String;

    .line 83
    .line 84
    sget-object v0, Lcom/google/android/gms/internal/ads/jz;->c:Lcom/google/android/gms/internal/ads/J;

    .line 85
    .line 86
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gz;->b:Ljava/lang/Object;

    .line 87
    .line 88
    check-cast v0, Landroid/os/Bundle;

    .line 89
    .line 90
    const-string v1, "thirdPartyAuthCallerId"

    .line 91
    .line 92
    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    return-void

    .line 96
    :pswitch_5
    check-cast p1, Ljava/lang/String;

    .line 97
    .line 98
    sget-object v0, Lcom/google/android/gms/internal/ads/jz;->c:Lcom/google/android/gms/internal/ads/J;

    .line 99
    .line 100
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gz;->b:Ljava/lang/Object;

    .line 101
    .line 102
    check-cast v0, Landroid/os/Bundle;

    .line 103
    .line 104
    invoke-virtual {v0, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    return-void

    .line 108
    :pswitch_6
    check-cast p1, Ljava/lang/String;

    .line 109
    .line 110
    sget-object v0, Lcom/google/android/gms/internal/ads/jz;->c:Lcom/google/android/gms/internal/ads/J;

    .line 111
    .line 112
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gz;->b:Ljava/lang/Object;

    .line 113
    .line 114
    check-cast v0, Landroid/os/Bundle;

    .line 115
    .line 116
    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    return-void

    .line 120
    :pswitch_7
    check-cast p1, Ljava/lang/String;

    .line 121
    .line 122
    sget-object v0, Lcom/google/android/gms/internal/ads/jz;->c:Lcom/google/android/gms/internal/ads/J;

    .line 123
    .line 124
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gz;->b:Ljava/lang/Object;

    .line 125
    .line 126
    check-cast v0, Landroid/os/Bundle;

    .line 127
    .line 128
    const-string v1, "deeplinkUrl"

    .line 129
    .line 130
    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    return-void

    .line 134
    :pswitch_8
    check-cast p1, Ljava/lang/String;

    .line 135
    .line 136
    sget-object v0, Lcom/google/android/gms/internal/ads/jz;->c:Lcom/google/android/gms/internal/ads/J;

    .line 137
    .line 138
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gz;->b:Ljava/lang/Object;

    .line 139
    .line 140
    check-cast v0, Landroid/os/Bundle;

    .line 141
    .line 142
    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    return-void

    .line 146
    nop

    .line 147
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
