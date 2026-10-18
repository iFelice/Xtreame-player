.class public final Lb7/O0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:Lb7/S0;


# direct methods
.method public synthetic constructor <init>(Lb7/S0;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lb7/O0;->G:I

    .line 5
    .line 6
    iput-object p1, p0, Lb7/O0;->H:Lb7/S0;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    iget v0, p0, Lb7/O0;->G:I

    .line 2
    .line 3
    const-string v1, "all"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    iget-object v4, p0, Lb7/O0;->H:Lb7/S0;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    iput-boolean v2, v4, Lb7/S0;->j1:Z

    .line 13
    .line 14
    invoke-virtual {v4, p1, v3}, Lb7/S0;->Z(Landroid/view/View;Z)V

    .line 15
    .line 16
    .line 17
    iput-object v1, v4, Lb7/S0;->e1:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v4, v1}, Lb7/S0;->W(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :pswitch_0
    iput-boolean v2, v4, Lb7/S0;->j1:Z

    .line 24
    .line 25
    invoke-virtual {v4, p1, v3}, Lb7/S0;->Z(Landroid/view/View;Z)V

    .line 26
    .line 27
    .line 28
    const-string p1, "cont"

    .line 29
    .line 30
    iput-object p1, v4, Lb7/S0;->e1:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {v4, v1}, Lb7/S0;->W(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :pswitch_1
    iput-boolean v2, v4, Lb7/S0;->j1:Z

    .line 37
    .line 38
    invoke-virtual {v4, p1, v3}, Lb7/S0;->Z(Landroid/view/View;Z)V

    .line 39
    .line 40
    .line 41
    const-string p1, "fav"

    .line 42
    .line 43
    iput-object p1, v4, Lb7/S0;->e1:Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {v4, v1}, Lb7/S0;->W(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :pswitch_2
    invoke-virtual {v4, p1, v3}, Lb7/S0;->Z(Landroid/view/View;Z)V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :pswitch_3
    iput-boolean v2, v4, Lb7/S0;->j1:Z

    .line 54
    .line 55
    iget-boolean v0, v4, Lb7/S0;->h1:Z

    .line 56
    .line 57
    if-eqz v0, :cond_0

    .line 58
    .line 59
    const-string v0, "search"

    .line 60
    .line 61
    iput-object v0, v4, Lb7/S0;->e1:Ljava/lang/String;

    .line 62
    .line 63
    iget-object v0, v4, Lb7/S0;->Q0:Landroid/widget/EditText;

    .line 64
    .line 65
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {v4, v0}, Lb7/S0;->W(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v4, p1, v3}, Lb7/S0;->Z(Landroid/view/View;Z)V

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_0
    invoke-virtual {v4, p1, v2}, Lb7/S0;->Z(Landroid/view/View;Z)V

    .line 81
    .line 82
    .line 83
    :goto_0
    return-void

    .line 84
    :pswitch_4
    iget-object p1, v4, Lb7/S0;->v1:Landroid/widget/FrameLayout;

    .line 85
    .line 86
    const/16 v0, 0x8

    .line 87
    .line 88
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 89
    .line 90
    .line 91
    return-void

    .line 92
    :pswitch_5
    invoke-virtual {v4}, LY/s;->l()Landroid/content/Context;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    const v0, 0x7f0e011f

    .line 101
    .line 102
    .line 103
    const/4 v1, 0x0

    .line 104
    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .line 109
    .line 110
    invoke-virtual {v4}, LY/s;->l()Landroid/content/Context;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    .line 126
    .line 127
    const-string v3, "#99000000"

    .line 128
    .line 129
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 130
    .line 131
    .line 132
    move-result v3

    .line 133
    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 134
    .line 135
    .line 136
    const v3, 0x7f0b03d7

    .line 137
    .line 138
    .line 139
    invoke-static {v1, v2, v0, p1, v3}, LA0/O;->w(Landroid/view/Window;Landroid/graphics/drawable/ColorDrawable;Landroid/app/AlertDialog;Landroid/view/View;I)Landroid/view/View;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    check-cast v1, Landroid/widget/EditText;

    .line 144
    .line 145
    const v2, 0x7f0b00a4

    .line 146
    .line 147
    .line 148
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 149
    .line 150
    .line 151
    move-result-object v2

    .line 152
    check-cast v2, Landroid/widget/Button;

    .line 153
    .line 154
    const v3, 0x7f0b00b1

    .line 155
    .line 156
    .line 157
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    check-cast p1, Landroid/widget/Button;

    .line 162
    .line 163
    new-instance v3, LW4/a;

    .line 164
    .line 165
    const/4 v4, 0x4

    .line 166
    invoke-direct {v3, p0, v1, v0, v4}, LW4/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    .line 171
    .line 172
    new-instance v1, Ll/c;

    .line 173
    .line 174
    const/16 v2, 0xc

    .line 175
    .line 176
    invoke-direct {v1, v2, p0, v0}, Ll/c;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 183
    .line 184
    .line 185
    return-void

    .line 186
    nop

    .line 187
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
