.class public Ljp/f4samurai/AppActivity;
.super Lorg/cocos2dx/lib/Cocos2dxActivity;
.source "AppActivity.java"

# interfaces
.implements Lorg/cocos2dx/lib/Cocos2dxHelper$Cocos2dxHelperListener;
.implements Landroidx/core/app/ActivityCompat$OnRequestPermissionsResultCallback;


# static fields
.field private static final TAG:Ljava/lang/String; = "AppActivity"


# instance fields
.field private mAlarmWeeklyHelper:Ljp/f4samurai/notification/NotificationCommandHelper;

.field private mCallback:Ljp/f4samurai/utils/RuntimePermissionUtils$Callback;

.field private mCameraHelper:Ljp/f4samurai/camera/CameraHelper;

.field private mEditBoxHelper:Ljp/f4samurai/editbox/EditBoxHelper;

.field private mNativeBridge:Ljp/f4samurai/bridge/NativeBridge;

.field private mPnoteHelper:Ljp/f4samurai/pnote/PnoteHelper;

.field private mPurchaseHelper:Ljp/f4samurai/purchase/PurchaseHelper;

.field private mWebViewHelper:Ljp/f4samurai/web/WebViewHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 62
    invoke-direct {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;-><init>()V

    const/4 v0, 0x0

    .line 65
    iput-object v0, p0, Ljp/f4samurai/AppActivity;->mNativeBridge:Ljp/f4samurai/bridge/NativeBridge;

    .line 68
    iput-object v0, p0, Ljp/f4samurai/AppActivity;->mPurchaseHelper:Ljp/f4samurai/purchase/PurchaseHelper;

    .line 69
    iput-object v0, p0, Ljp/f4samurai/AppActivity;->mPnoteHelper:Ljp/f4samurai/pnote/PnoteHelper;

    .line 70
    iput-object v0, p0, Ljp/f4samurai/AppActivity;->mAlarmWeeklyHelper:Ljp/f4samurai/notification/NotificationCommandHelper;

    .line 71
    iput-object v0, p0, Ljp/f4samurai/AppActivity;->mEditBoxHelper:Ljp/f4samurai/editbox/EditBoxHelper;

    .line 73
    iput-object v0, p0, Ljp/f4samurai/AppActivity;->mCameraHelper:Ljp/f4samurai/camera/CameraHelper;

    return-void
.end method

.method private resizeLayout(II)V
    .locals 2

    .line 259
    iget-object v0, p0, Ljp/f4samurai/AppActivity;->mFrameLayout:Lorg/cocos2dx/lib/ResizeLayout;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/ResizeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 260
    iget-object v1, p0, Ljp/f4samurai/AppActivity;->mFrameLayout:Lorg/cocos2dx/lib/ResizeLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 262
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, p1, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 263
    new-instance p1, Landroid/widget/LinearLayout;

    invoke-direct {p1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/16 p2, 0x11

    .line 264
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 265
    iget-object p2, p0, Ljp/f4samurai/AppActivity;->mFrameLayout:Lorg/cocos2dx/lib/ResizeLayout;

    invoke-virtual {p1, p2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 266
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private retrieveIntent(Landroid/content/Intent;)V
    .locals 2

    .line 235
    invoke-virtual {p0, p1}, Ljp/f4samurai/AppActivity;->setIntent(Landroid/content/Intent;)V

    .line 236
    iget-object v0, p0, Ljp/f4samurai/AppActivity;->mPnoteHelper:Ljp/f4samurai/pnote/PnoteHelper;

    invoke-virtual {v0, p1}, Ljp/f4samurai/pnote/PnoteHelper;->onNewIntent(Landroid/content/Intent;)V

    .line 237
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 238
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 239
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "magireco.reward"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x12

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 242
    invoke-static {p1}, Ljp/f4samurai/bridge/NativeBridge;->_setRewardData(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 155
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 156
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    .line 157
    invoke-static {}, Ljp/f4samurai/bridge/NativeBridge;->_onBackKeyReleased()V

    :cond_0
    const/4 p1, 0x1

    return p1

    .line 161
    :cond_1
    invoke-super {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public hideNavigation()V
    .locals 2

    .line 248
    invoke-virtual {p0}, Ljp/f4samurai/AppActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x1706

    .line 249
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 77
    invoke-super {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onCreate(Landroid/os/Bundle;)V

    .line 99
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x21

    if-lt p1, v0, :cond_0

    const-string p1, "android.permission.POST_NOTIFICATIONS"

    .line 100
    invoke-static {p0, p1}, Ljp/f4samurai/utils/RuntimePermissionUtils;->hasSelfPermissions(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 101
    invoke-static {p0, p1, v0, v1}, Ljp/f4samurai/utils/RuntimePermissionUtils;->requestPermission(Ljp/f4samurai/AppActivity;Ljava/lang/String;ILjp/f4samurai/utils/RuntimePermissionUtils$Callback;)V

    .line 104
    :cond_0
    invoke-virtual {p0}, Ljp/f4samurai/AppActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    .line 105
    new-instance v0, Landroid/graphics/Point;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 106
    invoke-virtual {p1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 107
    iget p1, v0, Landroid/graphics/Point;->x:I

    iget v1, v0, Landroid/graphics/Point;->y:I

    if-le p1, v1, :cond_1

    iget p1, v0, Landroid/graphics/Point;->x:I

    goto :goto_0

    :cond_1
    iget p1, v0, Landroid/graphics/Point;->y:I

    :goto_0
    int-to-float p1, p1

    .line 108
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v2, v0, Landroid/graphics/Point;->y:I

    if-le v1, v2, :cond_2

    iget v0, v0, Landroid/graphics/Point;->y:I

    goto :goto_1

    :cond_2
    iget v0, v0, Landroid/graphics/Point;->x:I

    :goto_1
    int-to-float v0, v0

    div-float v1, p1, v0

    const v2, 0x3fe38e39

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3

    const/high16 p1, 0x41100000    # 9.0f

    div-float p1, v0, p1

    const/high16 v1, 0x41800000    # 16.0f

    mul-float p1, p1, v1

    float-to-int p1, p1

    float-to-int v0, v0

    .line 112
    invoke-direct {p0, p1, v0}, Ljp/f4samurai/AppActivity;->resizeLayout(II)V

    goto :goto_2

    :cond_3
    float-to-int p1, p1

    float-to-int v0, v0

    .line 114
    invoke-direct {p0, p1, v0}, Ljp/f4samurai/AppActivity;->resizeLayout(II)V

    .line 117
    :goto_2
    iget-object p1, p0, Ljp/f4samurai/AppActivity;->mNativeBridge:Ljp/f4samurai/bridge/NativeBridge;

    if-nez p1, :cond_4

    .line 118
    new-instance p1, Ljp/f4samurai/bridge/NativeBridge;

    invoke-direct {p1}, Ljp/f4samurai/bridge/NativeBridge;-><init>()V

    iput-object p1, p0, Ljp/f4samurai/AppActivity;->mNativeBridge:Ljp/f4samurai/bridge/NativeBridge;

    .line 121
    :cond_4
    iget-object p1, p0, Ljp/f4samurai/AppActivity;->mWebViewHelper:Ljp/f4samurai/web/WebViewHelper;

    if-nez p1, :cond_5

    .line 122
    new-instance p1, Ljp/f4samurai/web/WebViewHelper;

    iget-object v0, p0, Ljp/f4samurai/AppActivity;->mFrameLayout:Lorg/cocos2dx/lib/ResizeLayout;

    invoke-direct {p1, p0, v0}, Ljp/f4samurai/web/WebViewHelper;-><init>(Ljp/f4samurai/AppActivity;Landroid/widget/FrameLayout;)V

    iput-object p1, p0, Ljp/f4samurai/AppActivity;->mWebViewHelper:Ljp/f4samurai/web/WebViewHelper;

    .line 125
    :cond_5
    iget-object p1, p0, Ljp/f4samurai/AppActivity;->mPurchaseHelper:Ljp/f4samurai/purchase/PurchaseHelper;

    if-nez p1, :cond_6

    .line 126
    new-instance p1, Ljp/f4samurai/purchase/PurchaseHelper;

    invoke-direct {p1}, Ljp/f4samurai/purchase/PurchaseHelper;-><init>()V

    iput-object p1, p0, Ljp/f4samurai/AppActivity;->mPurchaseHelper:Ljp/f4samurai/purchase/PurchaseHelper;

    .line 129
    :cond_6
    iget-object p1, p0, Ljp/f4samurai/AppActivity;->mPnoteHelper:Ljp/f4samurai/pnote/PnoteHelper;

    if-nez p1, :cond_7

    .line 130
    new-instance p1, Ljp/f4samurai/pnote/PnoteHelper;

    invoke-direct {p1}, Ljp/f4samurai/pnote/PnoteHelper;-><init>()V

    iput-object p1, p0, Ljp/f4samurai/AppActivity;->mPnoteHelper:Ljp/f4samurai/pnote/PnoteHelper;

    .line 133
    :cond_7
    iget-object p1, p0, Ljp/f4samurai/AppActivity;->mAlarmWeeklyHelper:Ljp/f4samurai/notification/NotificationCommandHelper;

    if-nez p1, :cond_8

    .line 134
    new-instance p1, Ljp/f4samurai/notification/NotificationCommandHelper;

    invoke-direct {p1}, Ljp/f4samurai/notification/NotificationCommandHelper;-><init>()V

    iput-object p1, p0, Ljp/f4samurai/AppActivity;->mAlarmWeeklyHelper:Ljp/f4samurai/notification/NotificationCommandHelper;

    .line 137
    :cond_8
    iget-object p1, p0, Ljp/f4samurai/AppActivity;->mEditBoxHelper:Ljp/f4samurai/editbox/EditBoxHelper;

    if-nez p1, :cond_9

    .line 138
    new-instance p1, Ljp/f4samurai/editbox/EditBoxHelper;

    iget-object v0, p0, Ljp/f4samurai/AppActivity;->mFrameLayout:Lorg/cocos2dx/lib/ResizeLayout;

    invoke-direct {p1, v0}, Ljp/f4samurai/editbox/EditBoxHelper;-><init>(Landroid/widget/FrameLayout;)V

    iput-object p1, p0, Ljp/f4samurai/AppActivity;->mEditBoxHelper:Ljp/f4samurai/editbox/EditBoxHelper;

    .line 146
    :cond_9
    iget-object p1, p0, Ljp/f4samurai/AppActivity;->mCameraHelper:Ljp/f4samurai/camera/CameraHelper;

    if-nez p1, :cond_b

    .line 147
    new-instance p1, Ljp/f4samurai/camera/CameraHelper;

    iget-object v0, p0, Ljp/f4samurai/AppActivity;->mFrameLayout:Lorg/cocos2dx/lib/ResizeLayout;

    invoke-direct {p1, v0}, Ljp/f4samurai/camera/CameraHelper;-><init>(Landroid/widget/FrameLayout;)V

    iput-object p1, p0, Ljp/f4samurai/AppActivity;->mCameraHelper:Ljp/f4samurai/camera/CameraHelper;

    .line 150
    :cond_b
    invoke-virtual {p0}, Ljp/f4samurai/AppActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Ljp/f4samurai/AppActivity;->retrieveIntent(Landroid/content/Intent;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 213
    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onDestroy()V

    .line 214
    iget-object v0, p0, Ljp/f4samurai/AppActivity;->mWebViewHelper:Ljp/f4samurai/web/WebViewHelper;

    invoke-virtual {v0}, Ljp/f4samurai/web/WebViewHelper;->onDestroy()V

    .line 215
    iget-object v0, p0, Ljp/f4samurai/AppActivity;->mPurchaseHelper:Ljp/f4samurai/purchase/PurchaseHelper;

    invoke-virtual {v0}, Ljp/f4samurai/purchase/PurchaseHelper;->onDestroy()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 220
    invoke-super {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 221
    invoke-direct {p0, p1}, Ljp/f4samurai/AppActivity;->retrieveIntent(Landroid/content/Intent;)V

    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 205
    sget-object v0, Ljp/f4samurai/AppActivity;->TAG:Ljava/lang/String;

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onPause()V

    .line 207
    iget-object v0, p0, Ljp/f4samurai/AppActivity;->mWebViewHelper:Ljp/f4samurai/web/WebViewHelper;

    invoke-virtual {v0}, Ljp/f4samurai/web/WebViewHelper;->onPause()V

    .line 208
    invoke-static {}, Ljp/f4samurai/camera/CameraHelper;->onPause()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2

    .line 277
    invoke-static {p1, p3}, Ljp/f4samurai/utils/RuntimePermissionUtils;->checkGrantResults(I[I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 278
    iget-object p1, p0, Ljp/f4samurai/AppActivity;->mCallback:Ljp/f4samurai/utils/RuntimePermissionUtils$Callback;

    if-eqz p1, :cond_2

    .line 279
    invoke-interface {p1}, Ljp/f4samurai/utils/RuntimePermissionUtils$Callback;->onGranted()V

    .line 280
    iput-object v1, p0, Ljp/f4samurai/AppActivity;->mCallback:Ljp/f4samurai/utils/RuntimePermissionUtils$Callback;

    goto :goto_0

    .line 283
    :cond_0
    iget-object v0, p0, Ljp/f4samurai/AppActivity;->mCallback:Ljp/f4samurai/utils/RuntimePermissionUtils$Callback;

    if-eqz v0, :cond_1

    .line 284
    invoke-interface {v0}, Ljp/f4samurai/utils/RuntimePermissionUtils$Callback;->onDenied()V

    .line 285
    iput-object v1, p0, Ljp/f4samurai/AppActivity;->mCallback:Ljp/f4samurai/utils/RuntimePermissionUtils$Callback;

    .line 287
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 171
    sget-object v0, Ljp/f4samurai/AppActivity;->TAG:Ljava/lang/String;

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onResume()V

    .line 173
    iget-object v0, p0, Ljp/f4samurai/AppActivity;->mWebViewHelper:Ljp/f4samurai/web/WebViewHelper;

    invoke-virtual {v0}, Ljp/f4samurai/web/WebViewHelper;->onResume()V

    .line 174
    invoke-static {}, Ljp/f4samurai/camera/CameraHelper;->onResume()V

    return-void
.end method

.method protected onStart()V
    .locals 0

    .line 179
    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onStart()V

    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 184
    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onStop()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3

    .line 189
    sget-object v0, Ljp/f4samurai/AppActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowFocusChanged() hasFocus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-super {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onWindowFocusChanged(Z)V

    .line 191
    iget-object v0, p0, Ljp/f4samurai/AppActivity;->mEditBoxHelper:Ljp/f4samurai/editbox/EditBoxHelper;

    invoke-virtual {v0, p1}, Ljp/f4samurai/editbox/EditBoxHelper;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_0

    .line 193
    invoke-virtual {p0}, Ljp/f4samurai/AppActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 194
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ljp/f4samurai/AppActivity$1;

    invoke-direct {v0, p0}, Ljp/f4samurai/AppActivity$1;-><init>(Ljp/f4samurai/AppActivity;)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public runOnGLThread(Ljava/lang/Runnable;)V
    .locals 0

    .line 231
    invoke-super {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->runOnGLThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setPermissionCallback(Ljp/f4samurai/utils/RuntimePermissionUtils$Callback;)V
    .locals 0

    .line 272
    iput-object p1, p0, Ljp/f4samurai/AppActivity;->mCallback:Ljp/f4samurai/utils/RuntimePermissionUtils$Callback;

    return-void
.end method

.method public showDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 226
    invoke-super {p0, p1, p2}, Lorg/cocos2dx/lib/Cocos2dxActivity;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
