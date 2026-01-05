.class public Ljp/f4samurai/web/WebViewImpl;
.super Landroid/webkit/WebView;
.source "WebViewImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljp/f4samurai/web/WebViewImpl$WebChromeClientImpl;,
        Ljp/f4samurai/web/WebViewImpl$Javascript;,
        Ljp/f4samurai/web/WebViewImpl$WebViewClientImpl;
    }
.end annotation


# static fields
.field private static sAppActivity:Ljp/f4samurai/AppActivity;


# instance fields
.field private final mJsScheme:Ljava/lang/String;

.field private mTouchEnabled:Z


# direct methods
.method static bridge synthetic -$$Nest$sfgetsAppActivity()Ljp/f4samurai/AppActivity;
    .locals 1

    sget-object v0, Ljp/f4samurai/web/WebViewImpl;->sAppActivity:Ljp/f4samurai/AppActivity;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 51
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    const-string v0, "game"

    .line 48
    iput-object v0, p0, Ljp/f4samurai/web/WebViewImpl;->mJsScheme:Ljava/lang/String;

    .line 52
    check-cast p1, Ljp/f4samurai/AppActivity;

    sput-object p1, Ljp/f4samurai/web/WebViewImpl;->sAppActivity:Ljp/f4samurai/AppActivity;

    const/4 p1, 0x1

    .line 53
    iput-boolean p1, p0, Ljp/f4samurai/web/WebViewImpl;->mTouchEnabled:Z

    const-string v0, "WebViewImpl"

    .line 55
    invoke-virtual {p0, v0}, Ljp/f4samurai/web/WebViewImpl;->setTag(Ljava/lang/Object;)V

    .line 57
    invoke-virtual {p0, p1}, Ljp/f4samurai/web/WebViewImpl;->setFocusable(Z)V

    .line 58
    invoke-virtual {p0, p1}, Ljp/f4samurai/web/WebViewImpl;->setFocusableInTouchMode(Z)V

    .line 59
    invoke-virtual {p0}, Ljp/f4samurai/web/WebViewImpl;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setTextZoom(I)V

    const/16 v0, 0x8

    .line 60
    invoke-virtual {p0, v0}, Ljp/f4samurai/web/WebViewImpl;->setVisibility(I)V

    const/4 v0, 0x0

    .line 61
    invoke-virtual {p0, v0}, Ljp/f4samurai/web/WebViewImpl;->setVerticalScrollBarEnabled(Z)V

    .line 62
    invoke-virtual {p0, v0}, Ljp/f4samurai/web/WebViewImpl;->setHorizontalScrollBarEnabled(Z)V

    .line 63
    invoke-virtual {p0, v0}, Ljp/f4samurai/web/WebViewImpl;->setBackgroundColor(I)V

    .line 64
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    const/4 v3, 0x0

    if-lt v1, v2, :cond_0

    const/4 v1, 0x2

    .line 65
    invoke-virtual {p0, v1, v3}, Ljp/f4samurai/web/WebViewImpl;->setLayerType(ILandroid/graphics/Paint;)V

    .line 68
    :cond_0
    invoke-virtual {p0, p1}, Ljp/f4samurai/web/WebViewImpl;->setInitialScale(I)V

    .line 69
    invoke-virtual {p0}, Ljp/f4samurai/web/WebViewImpl;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 70
    invoke-virtual {p0}, Ljp/f4samurai/web/WebViewImpl;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 71
    invoke-virtual {p0}, Ljp/f4samurai/web/WebViewImpl;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 74
    invoke-virtual {p0}, Ljp/f4samurai/web/WebViewImpl;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 75
    invoke-virtual {p0}, Ljp/f4samurai/web/WebViewImpl;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 78
    invoke-virtual {p0}, Ljp/f4samurai/web/WebViewImpl;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v4, -0x1

    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 80
    invoke-virtual {p0}, Ljp/f4samurai/web/WebViewImpl;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 81
    invoke-virtual {p0}, Ljp/f4samurai/web/WebViewImpl;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 83
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v1, v4, :cond_1

    .line 84
    invoke-virtual {p0}, Ljp/f4samurai/web/WebViewImpl;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 87
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_2

    const-string v0, "develop"

    const-string v1, "develop"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 88
    invoke-static {p1}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V

    .line 91
    :cond_2
    new-instance p1, Ljp/f4samurai/web/WebViewImpl$WebViewClientImpl;

    invoke-direct {p1, p0, v3}, Ljp/f4samurai/web/WebViewImpl$WebViewClientImpl;-><init>(Ljp/f4samurai/web/WebViewImpl;Ljp/f4samurai/web/WebViewImpl$WebViewClientImpl-IA;)V

    invoke-virtual {p0, p1}, Ljp/f4samurai/web/WebViewImpl;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 92
    new-instance p1, Ljp/f4samurai/web/WebViewImpl$WebChromeClientImpl;

    invoke-direct {p1, p0, v3}, Ljp/f4samurai/web/WebViewImpl$WebChromeClientImpl;-><init>(Ljp/f4samurai/web/WebViewImpl;Ljp/f4samurai/web/WebViewImpl$WebChromeClientImpl-IA;)V

    invoke-virtual {p0, p1}, Ljp/f4samurai/web/WebViewImpl;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 93
    new-instance p1, Ljp/f4samurai/web/WebViewImpl$Javascript;

    invoke-direct {p1, p0, v3}, Ljp/f4samurai/web/WebViewImpl$Javascript;-><init>(Ljp/f4samurai/web/WebViewImpl;Ljp/f4samurai/web/WebViewImpl$Javascript-IA;)V

    const-string v0, "androidCommand"

    invoke-virtual {p0, p1, v0}, Ljp/f4samurai/web/WebViewImpl;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 102
    iget-boolean v0, p0, Ljp/f4samurai/web/WebViewImpl;->mTouchEnabled:Z

    if-nez v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 105
    :cond_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setTouchEnable(Z)V
    .locals 0

    .line 97
    iput-boolean p1, p0, Ljp/f4samurai/web/WebViewImpl;->mTouchEnabled:Z

    return-void
.end method

.method public setWebViewRect(IIII)V
    .locals 1

    .line 156
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, p3, p4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 157
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 158
    iput p2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    const/16 p1, 0x33

    .line 159
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 160
    invoke-virtual {p0, v0}, Ljp/f4samurai/web/WebViewImpl;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
