.class public final LV6/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final G:I

.field public H:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0xc8

    .line 5
    .line 6
    const/16 v1, 0x7d

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-static {v1, v2, v2, v0}, Landroid/graphics/Color;->argb(IIII)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iput v0, p0, LV6/c;->H:I

    .line 14
    .line 15
    const/4 v0, 0x2

    .line 16
    iput v0, p0, LV6/c;->G:I

    .line 17
    .line 18
    return-void
.end method
