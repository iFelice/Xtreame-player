.class public final synthetic LD1/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:LD1/B;


# direct methods
.method public synthetic constructor <init>(LD1/B;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, LD1/y;->G:I

    .line 5
    .line 6
    iput-object p1, p0, LD1/y;->H:LD1/B;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget v0, p0, LD1/y;->G:I

    .line 2
    .line 3
    iget-object v1, p0, LD1/y;->H:LD1/B;

    .line 4
    .line 5
    invoke-static {v1, p1}, LD1/B;->a(LD1/B;Landroid/view/View;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
