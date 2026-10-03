.class public abstract LC1/a;
.super Lm0/Z;
.source "SourceFile"

# interfaces
.implements LU0/t;
.implements Landroid/view/SurfaceHolder$Callback;


# static fields
.field public static final synthetic H:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    const/16 v1, 0xf

    .line 3
    .line 4
    const/4 v2, 0x1

    .line 5
    new-instance v3, Landroid/util/SparseBooleanArray;

    .line 6
    .line 7
    invoke-direct {v3}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 8
    .line 9
    .line 10
    new-array v4, v1, [I

    .line 11
    .line 12
    fill-array-data v4, :array_0

    .line 13
    .line 14
    .line 15
    const/4 v5, 0x0

    .line 16
    :goto_0
    if-ge v5, v1, :cond_0

    .line 17
    .line 18
    aget v6, v4, v5

    .line 19
    .line 20
    xor-int/lit8 v7, v0, 0x1

    .line 21
    .line 22
    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3, v6, v2}, Landroid/util/SparseBooleanArray;->append(IZ)V

    .line 26
    .line 27
    .line 28
    add-int/2addr v5, v2

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    new-instance v1, Lm0/U;

    .line 31
    .line 32
    xor-int/2addr v0, v2

    .line 33
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x5
        0x8
        0x4
        0xb
        0xc
        0x10
        0x11
        0xf
        0x1b
        0x16
        0x18
        0x20
    .end array-data
.end method
