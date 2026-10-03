.class public final Lb7/E1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:Landroid/app/AlertDialog;

.field public final synthetic I:Landroid/widget/TextView;

.field public final synthetic J:Lpe/hf/black20/SettingsMenuActivity;


# direct methods
.method public synthetic constructor <init>(Lpe/hf/black20/SettingsMenuActivity;Landroid/app/AlertDialog;Landroid/widget/TextView;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p4, p0, Lb7/E1;->G:I

    .line 5
    .line 6
    iput-object p1, p0, Lb7/E1;->J:Lpe/hf/black20/SettingsMenuActivity;

    .line 7
    .line 8
    iput-object p2, p0, Lb7/E1;->H:Landroid/app/AlertDialog;

    .line 9
    .line 10
    iput-object p3, p0, Lb7/E1;->I:Landroid/widget/TextView;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    iget p1, p0, Lb7/E1;->G:I

    .line 2
    .line 3
    iget-object v0, p0, Lb7/E1;->I:Landroid/widget/TextView;

    .line 4
    .line 5
    const-string v1, "msg"

    .line 6
    .line 7
    iget-object v2, p0, Lb7/E1;->H:Landroid/app/AlertDialog;

    .line 8
    .line 9
    const-string v3, "streamFormat"

    .line 10
    .line 11
    iget-object v4, p0, Lb7/E1;->J:Lpe/hf/black20/SettingsMenuActivity;

    .line 12
    .line 13
    packed-switch p1, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    iget-object p1, v4, Lpe/hf/black20/SettingsMenuActivity;->G:Landroid/content/SharedPreferences;

    .line 17
    .line 18
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const-string v5, "m3u8"

    .line 23
    .line 24
    invoke-interface {p1, v3, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 25
    .line 26
    .line 27
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 28
    .line 29
    .line 30
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 34
    .line 35
    .line 36
    iget-object p1, v4, Lpe/hf/black20/SettingsMenuActivity;->J:Lpe/hf/black20/SettingsMenuActivity;

    .line 37
    .line 38
    const v2, 0x7f1301c1

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {v4, v2, v1}, Lpe/hf/black20/SettingsMenuActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    const v1, 0x7f130216

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :pswitch_0
    iget-object p1, v4, Lpe/hf/black20/SettingsMenuActivity;->G:Landroid/content/SharedPreferences;

    .line 60
    .line 61
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    const-string v5, "ts"

    .line 66
    .line 67
    invoke-interface {p1, v3, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 68
    .line 69
    .line 70
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 71
    .line 72
    .line 73
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 77
    .line 78
    .line 79
    iget-object p1, v4, Lpe/hf/black20/SettingsMenuActivity;->J:Lpe/hf/black20/SettingsMenuActivity;

    .line 80
    .line 81
    const v2, 0x7f1301c2

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    invoke-virtual {v4, v2, v1}, Lpe/hf/black20/SettingsMenuActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    const v1, 0x7f130217

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    .line 100
    .line 101
    return-void

    .line 102
    nop

    .line 103
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
