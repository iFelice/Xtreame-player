.class public final synthetic Lb7/p1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic G:Lpe/hf/black20/RecordsActivity;

.field public final synthetic H:Landroid/widget/TextView;

.field public final synthetic I:[Ljava/io/File;

.field public final synthetic J:Ljava/lang/String;

.field public final synthetic K:Landroid/app/AlertDialog;


# direct methods
.method public synthetic constructor <init>(Lpe/hf/black20/RecordsActivity;Landroid/widget/TextView;[Ljava/io/File;Ljava/lang/String;Landroid/app/AlertDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lb7/p1;->G:Lpe/hf/black20/RecordsActivity;

    .line 5
    .line 6
    iput-object p2, p0, Lb7/p1;->H:Landroid/widget/TextView;

    .line 7
    .line 8
    iput-object p3, p0, Lb7/p1;->I:[Ljava/io/File;

    .line 9
    .line 10
    iput-object p4, p0, Lb7/p1;->J:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p5, p0, Lb7/p1;->K:Landroid/app/AlertDialog;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    sget-object p1, Lpe/hf/black20/RecordsActivity;->W:Landroid/widget/ListView;

    .line 2
    .line 3
    iget-object p1, p0, Lb7/p1;->G:Lpe/hf/black20/RecordsActivity;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    iget-object v1, p0, Lb7/p1;->I:[Ljava/io/File;

    .line 10
    .line 11
    aget-object v0, v1, v0

    .line 12
    .line 13
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0}, Lpe/hf/black20/util/Methods;->M(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object v1, p0, Lb7/p1;->H:Landroid/widget/TextView;

    .line 22
    .line 23
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p1, Lpe/hf/black20/RecordsActivity;->H:Landroid/content/SharedPreferences;

    .line 27
    .line 28
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const-string v1, "rec_path"

    .line 33
    .line 34
    iget-object v2, p0, Lb7/p1;->J:Ljava/lang/String;

    .line 35
    .line 36
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 37
    .line 38
    .line 39
    const-string v1, "rec_path_storage"

    .line 40
    .line 41
    const-string v2, "External1 Location is Selected - "

    .line 42
    .line 43
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 44
    .line 45
    .line 46
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 47
    .line 48
    .line 49
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lb7/p1;->K:Landroid/app/AlertDialog;

    .line 53
    .line 54
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 55
    .line 56
    .line 57
    iget-object p1, p1, Lpe/hf/black20/RecordsActivity;->G:Lpe/hf/black20/RecordsActivity;

    .line 58
    .line 59
    const-string v0, "External1 Storge is Selected"

    .line 60
    .line 61
    invoke-static {p1, v0}, Lpe/hf/black20/util/Methods;->l(Landroid/content/Context;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    return-void
.end method
