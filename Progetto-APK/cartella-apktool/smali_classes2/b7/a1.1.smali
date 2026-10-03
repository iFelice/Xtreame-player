.class public final synthetic Lb7/a1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:Lpe/hf/black20/PlayStreamEPGActivity;


# direct methods
.method public synthetic constructor <init>(Lpe/hf/black20/PlayStreamEPGActivity;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lb7/a1;->G:I

    .line 5
    .line 6
    iput-object p1, p0, Lb7/a1;->H:Lpe/hf/black20/PlayStreamEPGActivity;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .line 1
    iget p1, p0, Lb7/a1;->G:I

    .line 2
    .line 3
    iget-object v0, p0, Lb7/a1;->H:Lpe/hf/black20/PlayStreamEPGActivity;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    packed-switch p1, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    iput-boolean v1, v0, Lpe/hf/black20/PlayStreamEPGActivity;->L2:Z

    .line 10
    .line 11
    return-void

    .line 12
    :pswitch_0
    iput-boolean v1, v0, Lpe/hf/black20/PlayStreamEPGActivity;->L2:Z

    .line 13
    .line 14
    return-void

    .line 15
    :pswitch_1
    iput-boolean v1, v0, Lpe/hf/black20/PlayStreamEPGActivity;->L2:Z

    .line 16
    .line 17
    return-void

    .line 18
    nop

    .line 19
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
