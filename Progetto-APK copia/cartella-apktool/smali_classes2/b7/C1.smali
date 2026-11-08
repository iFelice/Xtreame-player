.class public final Lb7/C1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Lpe/hf/black20/SettingsMenuActivity;


# direct methods
.method public synthetic constructor <init>(Lpe/hf/black20/SettingsMenuActivity;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lb7/C1;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Lb7/C1;->c:Lpe/hf/black20/SettingsMenuActivity;

    .line 7
    .line 8
    iput-object p2, p0, Lb7/C1;->b:Landroid/view/View;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 5

    .line 1
    iget p1, p0, Lb7/C1;->a:I

    .line 2
    .line 3
    const-string v0, "VLC"

    .line 4
    .line 5
    const-string v1, "EXO"

    .line 6
    .line 7
    iget-object v2, p0, Lb7/C1;->c:Lpe/hf/black20/SettingsMenuActivity;

    .line 8
    .line 9
    const-string v3, "EXO Player"

    .line 10
    .line 11
    iget-object v4, p0, Lb7/C1;->b:Landroid/view/View;

    .line 12
    .line 13
    packed-switch p1, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    invoke-virtual {v4, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Landroid/widget/RadioButton;

    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    const-string p2, "whichplayer_ms"

    .line 31
    .line 32
    if-eqz p1, :cond_0

    .line 33
    .line 34
    iget-object p1, v2, Lpe/hf/black20/SettingsMenuActivity;->G:Landroid/content/SharedPreferences;

    .line 35
    .line 36
    invoke-static {p1, p2, v1}, La/r;->n(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    iget-object p1, v2, Lpe/hf/black20/SettingsMenuActivity;->G:Landroid/content/SharedPreferences;

    .line 41
    .line 42
    invoke-static {p1, p2, v0}, La/r;->n(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    :goto_0
    return-void

    .line 46
    :pswitch_0
    invoke-virtual {v4, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    check-cast p1, Landroid/widget/RadioButton;

    .line 51
    .line 52
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    const-string p2, "whichplayer_catchup"

    .line 61
    .line 62
    if-eqz p1, :cond_1

    .line 63
    .line 64
    iget-object p1, v2, Lpe/hf/black20/SettingsMenuActivity;->G:Landroid/content/SharedPreferences;

    .line 65
    .line 66
    invoke-static {p1, p2, v1}, La/r;->n(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_1
    iget-object p1, v2, Lpe/hf/black20/SettingsMenuActivity;->G:Landroid/content/SharedPreferences;

    .line 71
    .line 72
    invoke-static {p1, p2, v0}, La/r;->n(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    :goto_1
    return-void

    .line 76
    :pswitch_1
    invoke-virtual {v4, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    check-cast p1, Landroid/widget/RadioButton;

    .line 81
    .line 82
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    const-string p2, "whichplayer_series"

    .line 91
    .line 92
    if-eqz p1, :cond_2

    .line 93
    .line 94
    iget-object p1, v2, Lpe/hf/black20/SettingsMenuActivity;->G:Landroid/content/SharedPreferences;

    .line 95
    .line 96
    invoke-static {p1, p2, v1}, La/r;->n(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    goto :goto_2

    .line 100
    :cond_2
    iget-object p1, v2, Lpe/hf/black20/SettingsMenuActivity;->G:Landroid/content/SharedPreferences;

    .line 101
    .line 102
    invoke-static {p1, p2, v0}, La/r;->n(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    :goto_2
    return-void

    .line 106
    :pswitch_2
    invoke-virtual {v4, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    check-cast p1, Landroid/widget/RadioButton;

    .line 111
    .line 112
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result p1

    .line 120
    const-string p2, "whichplayer_vod"

    .line 121
    .line 122
    if-eqz p1, :cond_3

    .line 123
    .line 124
    iget-object p1, v2, Lpe/hf/black20/SettingsMenuActivity;->G:Landroid/content/SharedPreferences;

    .line 125
    .line 126
    invoke-static {p1, p2, v1}, La/r;->n(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    goto :goto_3

    .line 130
    :cond_3
    iget-object p1, v2, Lpe/hf/black20/SettingsMenuActivity;->G:Landroid/content/SharedPreferences;

    .line 131
    .line 132
    invoke-static {p1, p2, v0}, La/r;->n(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    :goto_3
    return-void

    .line 136
    :pswitch_3
    invoke-virtual {v4, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    check-cast p1, Landroid/widget/RadioButton;

    .line 141
    .line 142
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    move-result p1

    .line 150
    const-string p2, "whichplayer_tv"

    .line 151
    .line 152
    if-eqz p1, :cond_4

    .line 153
    .line 154
    iget-object p1, v2, Lpe/hf/black20/SettingsMenuActivity;->G:Landroid/content/SharedPreferences;

    .line 155
    .line 156
    invoke-static {p1, p2, v1}, La/r;->n(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    goto :goto_4

    .line 160
    :cond_4
    iget-object p1, v2, Lpe/hf/black20/SettingsMenuActivity;->G:Landroid/content/SharedPreferences;

    .line 161
    .line 162
    invoke-static {p1, p2, v0}, La/r;->n(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    :goto_4
    return-void

    .line 166
    nop

    .line 167
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
