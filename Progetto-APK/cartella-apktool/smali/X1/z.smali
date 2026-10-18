.class public abstract LX1/z;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LX1/B;

.field public static b:Ljava/lang/reflect/Field;

.field public static c:Z

.field public static final d:Ll/b1;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x16

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    new-instance v0, LX1/C;

    .line 8
    .line 9
    invoke-direct {v0}, LX1/A;-><init>()V

    .line 10
    .line 11
    .line 12
    sput-object v0, LX1/z;->a:LX1/B;

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    new-instance v0, LX1/B;

    .line 16
    .line 17
    invoke-direct {v0}, LX1/A;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v0, LX1/z;->a:LX1/B;

    .line 21
    .line 22
    :goto_0
    new-instance v0, Ll/b1;

    .line 23
    .line 24
    const/16 v1, 0xa

    .line 25
    .line 26
    const-class v2, Ljava/lang/Float;

    .line 27
    .line 28
    const-string v3, "translationAlpha"

    .line 29
    .line 30
    invoke-direct {v0, v1, v2, v3}, Ll/b1;-><init>(ILjava/lang/Class;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    sput-object v0, LX1/z;->d:Ll/b1;

    .line 34
    .line 35
    new-instance v0, Ll/b1;

    .line 36
    .line 37
    const/16 v1, 0xb

    .line 38
    .line 39
    const-class v2, Landroid/graphics/Rect;

    .line 40
    .line 41
    const-string v3, "clipBounds"

    .line 42
    .line 43
    invoke-direct {v0, v1, v2, v3}, Ll/b1;-><init>(ILjava/lang/Class;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public static a(Landroid/view/View;IIII)V
    .locals 6

    .line 1
    sget-object v0, LX1/z;->a:LX1/B;

    .line 2
    .line 3
    move-object v1, p0

    .line 4
    move v2, p1

    .line 5
    move v3, p2

    .line 6
    move v4, p3

    .line 7
    move v5, p4

    .line 8
    invoke-virtual/range {v0 .. v5}, LU1/f;->i(Landroid/view/View;IIII)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public static b(Landroid/view/View;I)V
    .locals 3

    .line 1
    sget-boolean v0, LX1/z;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    :try_start_0
    const-class v1, Landroid/view/View;

    .line 7
    .line 8
    const-string v2, "mViewFlags"

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    sput-object v1, LX1/z;->b:Ljava/lang/reflect/Field;

    .line 15
    .line 16
    invoke-virtual {v1, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catch_0
    const-string v1, "ViewUtils"

    .line 21
    .line 22
    const-string v2, "fetchViewFlagsField: "

    .line 23
    .line 24
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    :goto_0
    sput-boolean v0, LX1/z;->c:Z

    .line 28
    .line 29
    :cond_0
    sget-object v0, LX1/z;->b:Ljava/lang/reflect/Field;

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    :try_start_1
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    sget-object v1, LX1/z;->b:Ljava/lang/reflect/Field;

    .line 38
    .line 39
    and-int/lit8 v0, v0, -0xd

    .line 40
    .line 41
    or-int/2addr p1, v0

    .line 42
    invoke-virtual {v1, p0, p1}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    .line 43
    .line 44
    .line 45
    :catch_1
    :cond_1
    return-void
.end method
